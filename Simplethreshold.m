close all;

%% Imports profiles, change filepaths for sw5 vs sw20
prof_all = [];
rssis = [];
load('data/data319_fft_fah1_sw20/ac_37_43_de_62_e7-157-20.mat'); 
prof_all = [prof_all;prof];
rssis = [rssis,rssi];
load('data/data319_fft_fah2_sw20/ac_37_43_de_62_e7-157-20.mat'); 
prof_all = [prof_all; prof];
rssis = [rssis,rssi];
load('data/data319_fft_fah3_sw20/ac_37_43_de_62_e7-157-20.mat'); 
prof_all = [prof_all; prof];
rssis = [rssis,rssi];
threshold_value = 0.55;

rssis = rssis - min(rssis);
mean_rssi = mean(rssis);

% Define the input size
input_size = [360,240,1]; 
[num_data, txt_data, raw_data] = xlsread("ylabel_fah_sw20.xlsx", 'SM20');
labels = reshape(num_data,[],1);
labels = labels(~isnan(labels));
labels = labels >= 3;
data_len = size(prof_all,1);
threshold_value2 = 0.08;

%% Extract features from prof data
area_ratios = [];
for i = 46:50
    % Extract relevant features from the prof data
    % For example, you can calculate the number of peaks, the maximum peak intensity, etc.
    % Here, we'll calculate the number of peaks and the maximum peak intensity
    prof_data = reshape(prof_all(i, :, :),360,240);
    prof_data = double(prof_data)/255.0;
    
    % Find local maxima in the smoothed prof_all data
    local_maxima = islocalmax(prof_data);
    
    % Filter out local maxima that exceed the threshold value
    significant_peaks = prof_data;
    significant_peaks(prof_data < threshold_value) = 0;

    % Perform connected component analysis to find clusters
    cc = bwconncomp(significant_peaks);
    
    bool_multipeaks = 0;
   % Find the first two largest connected components
    largest_cluster_idx = zeros(2, 1);
    largest_cluster_size = zeros(2, 1);
    if cc.NumObjects == 1
        significant_peaks = significant_peaks;
    else
        for j = 1:cc.NumObjects
            if numel(cc.PixelIdxList{j}) > largest_cluster_size(1)
                largest_cluster_idx(2) = largest_cluster_idx(1);
                largest_cluster_size(2) = largest_cluster_size(1);
                largest_cluster_idx(1) = j;
                largest_cluster_size(1) = numel(cc.PixelIdxList{j});
            elseif numel(cc.PixelIdxList{j}) > largest_cluster_size(2)
                largest_cluster_idx(2) = j;
                largest_cluster_size(2) = numel(cc.PixelIdxList{j});
            end
        end
        % Calculate the average value for the first two largest clusters
        average_value1 = mean(significant_peaks(cc.PixelIdxList{largest_cluster_idx(1)}));
        average_value2 = mean(significant_peaks(cc.PixelIdxList{largest_cluster_idx(2)}));
        average_values = [average_values;[i,average_value1,average_value2]];
        % Set all other clusters to zero
        for j = 1:cc.NumObjects
            if any(largest_cluster_idx == j)
                if abs(average_value1 - average_value2) > threshold_value2
                    if average_value1 > average_value2
                        significant_peaks(cc.PixelIdxList{largest_cluster_idx(2)}) = 0;
                    else 
                        significant_peaks(cc.PixelIdxList{largest_cluster_idx(1)}) = 0;
                    end
                else 
                    bool_multipeaks = 1;
                end
            else
                significant_peaks(cc.PixelIdxList{j}) = 0;
            end
        end
     end
    
    mask_sigpeaks = significant_peaks > 0;
    area_cluster = sum(sum(mask_sigpeaks));
    area_ratio = area_cluster/(size(prof_data,1)*size(prof_data,2));
    area_ratios = [area_ratios;area_ratio];
    figure()
    imshow(prof_data, 'Colormap', hot); % Use 'hot' colormap
    figure()
    imshow(significant_peaks, 'Colormap', hot); % Use 'hot' colormap
end

%% Calculates Accuracy
mean_arearatio = mean(area_ratios);
good_idx = find(area_ratios < mean_arearatio);
predicted_labels = zeros(data_len,1);
predicted_labels(good_idx) = 1;
accuracy = sum(predicted_labels == labels) / length(labels);
disp(['Accuracy: ', num2str(accuracy)]);

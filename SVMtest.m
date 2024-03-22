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
[num_data, txt_data, raw_data] = xlsread("ylabel_fah_sw20.xlsx", 'SM5'); %update for sw
labels = reshape(num_data,[],1);
labels = labels(~isnan(labels));
labels = labels >= 3;
data_len = size(prof_all,1);
threshold_value2 = 0.08;

%% Extract features from prof data
features = [];
average_values = [];
for i = 1:data_len
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
    norm_rssi = double(rssis(i))/mean_rssi;
    feature = [area_ratio,bool_multipeaks,norm_rssi];
    % Store the features in a row vector
    features = [features; feature];
end

mean_arearatio = mean(features(:,1));
features(:,1) = features(:,1) /mean_arearatio;
%% Split the data into training and testing sets (80% training, 20% testing)

num_samples = size(features, 1);
num_train_samples = round(0.8 * num_samples);

train_indices = randperm(num_samples, num_train_samples);
test_indices = setdiff(1:num_samples, train_indices);

train_features = double(features(train_indices, :));
train_labels = labels(train_indices);
test_features = double(features(test_indices, :));
test_labels = labels(test_indices);

% Train the SVM classifier
svm_model = fitcsvm(train_features, train_labels,"KernelFunction","rbf");

% Predict labels for the testing set
predicted_labels = predict(svm_model, test_features);

%% Evaluate the classifier's performance
accuracy = sum(predicted_labels == test_labels) / length(test_labels);
disp(['Accuracy: ', num2str(accuracy)]);



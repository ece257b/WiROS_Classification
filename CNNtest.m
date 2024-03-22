close all;

%% Imports profiles, change filepaths for sw5 vs sw20
prof_all = [];
load('data/data319_fft_fah1_sw5/ac_37_43_de_62_e7-157-20.mat'); 
prof_all = [prof_all;prof];
load('data/data319_fft_fah2_sw5/ac_37_43_de_62_e7-157-20.mat'); 
prof_all = [prof_all; prof];
load('data/data319_fft_fah3_sw5/ac_37_43_de_62_e7-157-20.mat'); 
prof_all = [prof_all; prof];

% Define the input size for the CNN
input_size = [360,240,1]; 
[num_data, txt_data, raw_data] = xlsread("ylabel_fah_sw20.xlsx", 'SM5');
labels = reshape(num_data,[],1);
labels = labels(~isnan(labels));
data_len = size(prof_all,1);
threshold_value = 0.55;
threshold_value2 = 0.08;

%% Define the CNN architecture
layers = [
    imageInputLayer(input_size)
    
    convolution2dLayer(3, 16, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2, 'Stride', 2)
    
    convolution2dLayer(3, 32, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    
    maxPooling2dLayer(2, 'Stride', 2)
    
    convolution2dLayer(3, 64, 'Padding', 'same')
    batchNormalizationLayer
    reluLayer
    
    fullyConnectedLayer(4)
    softmaxLayer
    classificationLayer
];

rng(1); % For reproducibility
num_samples = data_len;
num_train_samples = round(0.8 * num_samples);

for i = 1:data_len
    % Extract prof_all data for the selected packet
    prof_data = reshape(prof_all(i, :, :),360,240);
    prof_data = double(prof_data)/255.0;
  
   
    % Find local maxima in the smoothed prof_all data
    local_maxima = islocalmax(prof_data);
    
    % Filter out local maxima that exceed the threshold value
    significant_peaks = prof_data;
    significant_peaks(prof_data < threshold_value) = 0;

    % Perform connected component analysis to find clusters
    cc = bwconncomp(significant_peaks);
    
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
        %average_values = [average_values;[average_value1,average_value2]];
        % Set all other clusters to zero
        for j = 1:cc.NumObjects
            if any(largest_cluster_idx == j)
                if abs(average_value1 - average_value2) > threshold_value2
                    if average_value1 > average_value2
                        significant_peaks(cc.PixelIdxList{largest_cluster_idx(2)}) = 0;
                    else 
                        significant_peaks(cc.PixelIdxList{largest_cluster_idx(1)}) = 0;
                    end
                end
            else
                significant_peaks(cc.PixelIdxList{j}) = 0;
            end
        end
    end
    prof_all(i,:,:) = significant_peaks;   
end

train_indices = randperm(num_samples, num_train_samples);
test_indices = setdiff(1:num_samples, train_indices);
% Convert data to the correct format for the CNN
train_data = prof_all(train_indices,:, :);
test_data = prof_all(test_indices,:, : );


train_data = reshape(train_data, [input_size,  length(train_indices)]);
test_data = reshape(test_data, [input_size,  length(test_indices)]);

train_labels = categorical(labels(train_indices));
test_labels = categorical(labels(test_indices));

%% Specify training options
options = trainingOptions('adam', ...
    'MaxEpochs', 10, ...
    'MiniBatchSize', 32, ...
    'Plots', 'training-progress');

% Train the CNN
net = trainNetwork(train_data, train_labels, layers, options);

%% Evaluate the CNN's performance
predicted_labels = classify(net, test_data);
accuracy = sum(predicted_labels == test_labels) / numel(test_labels);
disp(['Accuracy: ', num2str(accuracy)]);

predicted_labels_bi = double(predicted_labels) >= 3;
test_labels_bi = double(test_labels) >=3;
accuracy2 = sum(predicted_labels_bi == test_labels_bi) / numel(test_labels_bi);

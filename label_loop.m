close all;

%load desired file
load('./data/data319_fft_fah1_sw5/ac_37_43_de_62_e7-157-20.mat')

% pause(2)

%Display images one at a time
for i = 1:5
    figure(i);
    img = squeeze(prof(i,:,:)); % Extract the ith image
    imshow(img, 'Colormap', hot); % Use 'hot' colormap
    pause(2.25)
    close all;
end

close all;

% Load your .mat file containing the data
load('ac_37_43_de_62_e7-157-20_loc3.mat'); 
data_len = size(prof,1);
for i = 101:188
    figure(i);
    img = reshape(prof(i,:,: ),360,240);
    imshow(img,'Colormap',hot);
end

% xpeaks_ratio = zeros(size(prof,1),1);
% ypeaks_ratio = zeros(size(prof,1),1);
% 
% data_len = size(prof,1);
% y_label = zeros(data_len,1);
% for i = 1:data_len
%     % Extract prof data for the selected packet
%     prof_data = reshape(prof(i, :, :),360,240);
% 
%         %Plot 3D plot for prof data
%         figure;
%         surf(prof_data);
%         xlabel('AoA');
%         ylabel('Relative Distance');
%         zlabel('Intensity');
%         title('3D Plot for Prof Data');
% 
%     % Calculate projection on x-axis (AoA)
%     projection_x = sum(prof_data, 1);
%     [x_peaks,x_loc] = findpeaks(projection_x,"MinPeakDistance",20);
%     max2_xpeaks = maxk(x_peaks,2);
% 
%     projection_y = sum(prof_data, 2);
%     [y_peaks,y_loc] = findpeaks(projection_y,"MinPeakDistance",20);
%     max2_ypeaks = maxk(y_peaks,2);
% 
%     if length(max2_xpeaks) > 1 && length(max2_ypeaks) > 1
%         x_ratio = max2_xpeaks(1)/max2_xpeaks(2);
%         y_ratio = max2_ypeaks(1)/max2_ypeaks(2);
%         xpeaks_ratio(i) = x_ratio;
%         ypeaks_ratio(i) = y_ratio;
%     else
%         xpeaks_ratio(i) = 3;
%         ypeaks_ratio(i) = 5;
%     end
% end
% xpeaks_picked = find(xpeaks_ratio > 2);
% ypeaks_picked = find(ypeaks_ratio>1.5);
% [com_id,~] = intersect(xpeaks_picked,ypeaks_picked);
% y_label(com_id) = 1;
% % Plot projection on x-axis
% figure;
% plot(projection_x);
% xlabel('Distance');
% ylabel('Intensity');
% title('Projection on X-Axis');
% 
% % Calculate projection on y-axis (Relative Distance)
% 
% % Plot projection on y-axis
% figure;
% x = -179:1:180;
% plot(x,projection_y);
% xlabel('AoA');
% ylabel('Intensity');
% title('Projection on Y-Axis');



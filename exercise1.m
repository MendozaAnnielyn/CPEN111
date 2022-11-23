close all;
clear all;
clc
pkg load image;

Orig_Image = imread('fruits.png');  % Read the image information
subplot(131);
imshow(Orig_Image);
title('Original Image')


Orig_Image1 = imresize(imresize(Orig_Image,1/10),10); % Reduce resolution
subplot(132);
imshow(Orig_Image1);
title('10x10 resolution');
imwrite(Orig_Image1,'fruits2.png');


chg_color = rgb2hsv(Orig_Image);    % Change the color image to HSV
subplot(133)
imshow(chg_color);                % Display converted version (HSV)
title('RGB to HSV');
imwrite(chg_color,'fruits3.png');




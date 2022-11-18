clear;
clc;

gi = imread('football.jpg');
gi = rgb2gray(gi);

figure; imshow(gi); title('original Image');

hsize=[9 9]; sigma=3;

[blurred,PSF] = blurring(gi, hsize, sigma);

figure; imshow(blurred); title('Blurred Image');

t = 1000;
deblurr = lucyRichardson(blurred, PSF, t);
figure; imshow(deblurr); title('Recovered Image');





clc,clear all ,close all;
I = imread('cameraman.jpg');
gaussianFilter = imgaussfilt3(I,5);
meanFilter = medfilt3(I,[5,5,5]);

subplot(2,2,1), imshow(I), title("Original image");
subplot(2,2,2), imshow(gaussianFilter), title("Gaussian Filter Mean 5");
subplot(2,2,3), imshow(meanFilter), title("Mean Filter Mean 3");

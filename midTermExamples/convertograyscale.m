clear all,close all, clc

I = imread('peppers.png');
I2 = imread('football.jpg');
I_gray = rgb2gray(I);
I2_gray = rgb2gray(I2);
figure,
subplot(2,2,1);imshow(I);title('orjinal resim');
subplot(2,2,2);imshow(I2);title('orjinal resim');
subplot(2,2,3);imshow(I_gray);title('gri resim');
subplot(2,2,4);imshow(I2_gray);title('gri resim');
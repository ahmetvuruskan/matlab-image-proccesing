clear all,clc, ,close all

I = imread('football.jpg');
gray_scale = rgb2gray(I);
binarize = imbinarize(gray_scale);
square = strel('square',6);
square2 = strel('square',5);
circle = strel('disk',6,6);   
bw = [0 1 0 0 1 0
      1 0 1 1 0 1
      0 1 0 0 1 0
      0 1 0 0 1 0
      1 0 1 1 0 1
      0 1 0 0 1 0];
        
erosion = imerode(binarize,square2);
opening = imopen(binarize,square);
closing = imclose(binarize,square);
hitormiss = bwhitmiss(gray_scale,bw);
skeleton = bwmorph(gray_scale,'skel',Inf);
boundary_extraction = binarize - erosion;

figure,

subplot(2,3,1);imshow(boundary_extraction );title('boundary extraction image');
subplot(2,3,2);imshow(binarize);title('binarize image');
subplot(2,3,3);imshow(opening);title('opening image');
subplot(2,3,4);imshow(closing);title('closing image');
subplot(2,3,5);imshow(hitormiss);title('hitormiss image');
subplot(2,3,6);imshow(skeleton);title('skeleton image');

suptitle('Structure element is 6 by 6 square matrix');


erosion1 = imerode(binarize,circle);
opening1 = imopen(binarize,circle);
closing1 = imclose(binarize,circle);
hitormiss1 = bwhitmiss(gray_scale,bw);
skeleton1 = bwmorph(gray_scale,'skel',Inf);
boundary_extraction1 = binarize - erosion;

figure,

subplot(2,3,1);imshow(boundary_extraction1 );title('boundary extraction image');
subplot(2,3,2);imshow(binarize);title('binarize image');
subplot(2,3,3);imshow(opening1);title('opening image');
subplot(2,3,4);imshow(closing1);title('closing image');
subplot(2,3,5);imshow(hitormiss1);title('hitormiss image');
subplot(2,3,6);imshow(skeleton1);title('skeleton image');

suptitle('Structure element is 5 by 5 disk matrix');
clear all , close all ,clc
I= imread('peppers.png');
small = imresize(I,0.5);
large  = imresize(I,2);
figure, imshow(I);title('Orjinal resim');
figure, imshow(small);title(' %50 Küçültülmüþ resim');
figure, imshow(large);title('%100 Büyütülmüþ resim');
% subplot(2,2,1),imshow(I);title('Orjinal resim');
% subplot(2,2,2),imshow(small);title(' %50 Küçültülmüþ resim');
% subplot(2,2,3),imshow(large);title('2 kat büyük resim');
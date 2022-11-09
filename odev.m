%yatayda ve düþeyde 20 px kaydýr
%  resim 5/1 oranýnda küçlecek
%resim 2 kat büyültülerek çizilecek
% resim gri scale olcak
% orjinal
% -30 derece resmi döndür
%
clc,clear all ,close all;
I = imread('cameraman.jpg');
grayScale = rgb2gray(I);
% Filters Start
firstFilter = [1/9, 1/9, 1/9;1/9, 1/9, 1/9;1/9, 1/9, 1/9];
secondFilter = [0, -1, 0;-1, 5, -1;0, -1, 0];
thirdFilter  = [1,1,1;0,0,0;-1,-1,-1];
firstFilteredImage = imfilter(I,firstFilter);
secondFilteredImage = imfilter(I,secondFilter);
thirdFilteredImage = imfilter(I,thirdFilter);


% Filters end
twentyPercentZoomOut = imresize(I,0.2);
fiftypercentZoomIn = imresize(I,2);
imIshift = imtranslate(I,[20,20]);
rotatedImage= imrotate(I,330,'bilinear','crop');
figure ,imshow(I),title("Original image");
figure ,imshow(grayScale),title("Grayscale image");
figure ,imshow(twentyPercentZoomOut),title("%20 zoom out image");
figure ,imshow(fiftypercentZoomIn),title("%50 zoom in image");
figure ,imshow(imIshift),title(" shifted image ");
figure ,imshow(rotatedImage),title(" rotaded   image");
figure,
subplot(2,2,1), imshow(I), title("Original image");
subplot(2,2,2), imshow(firstFilteredImage), title("Filtered image");
subplot(2,2,3), imshow(secondFilteredImage), title("Filtered image");
subplot(2,2,4), imshow(thirdFilteredImage), title("Filtered image");


%yatayda ve düþeyde 20 px kaydýr
%  resim 5/1 oranýnda küçlecek
%resim 2 kat büyültülerek çizilecek
% resim gri scale olcak
% orjinal
I = imread('cameraman.jpg');
grayScale = rgb2gray(I);
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
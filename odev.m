%yatayda ve d��eyde 20 px kayd�r
%  resim 5/1 oran�nda k��lecek
%resim 2 kat b�y�lt�lerek �izilecek
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
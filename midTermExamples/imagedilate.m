clear;
close all;
clc;

I = imread('coins.png');
I2 = imread('apartments.png');
laplacianFilter =  fspecial('sobel');
laplacianFilteredImage = imfilter(I2,laplacianFilter);
I2Gray = rgb2gray(I2);
I2binary = imbinarize(I2Gray);
I2Edges = edge(I2binary,'Canny');
 flatObject = strel('square',3);
 binaryOpen = imclose(I2binary,flatObject);
 openedImage = imopen(I,flatObject);
 closedImage = imclose(I,flatObject);
 dilatedImage = imdilate(I,flatObject);
 I2horizontalEdgeImage = imfilter(I2Gray, [-1 0 1]);
I2verticalEdgeImage   = imfilter(I2Gray, [-1 0 1]');
IhorizontalEdgeImage = imfilter(I, [-1 0 1]);
IverticalEdgeImage   = imfilter(I, [-1 0 1]');
 
 figure ,imshow(dilatedImage);title('Dilation');
 figure ,imshow(openedImage);title('Opened');
 figure ,imshow(closedImage);title('Closed');
 figure ,imshow(binaryOpen);title('Binary Close');
 figure ,imshow(I2Edges);title('Second Image Edges');
 figure, imshow(laplacianFilteredImage);title('laplacian filtered image');
 figure,
 subplot(2,2,1),imshow(I2horizontalEdgeImage);title('I2 horizontal edges');
 subplot(2,2,2),imshow(I2verticalEdgeImage);title('I2 vertical edges');
 subplot(2,2,3),imshow(IhorizontalEdgeImage);title('I horizontal edges');
 subplot(2,2,4),imshow(IverticalEdgeImage);title('I vertical edges');
  
  
  I = imread('coins.png');
  se=strel('square',3);
  gray_scale = rgb2gray(I);
  BW = imbinarize(I);
 BW2 = bwperim(BW,8);
  skeleton = bwmorphy(gray_scale,'scel',Inf);
 opening = imopen(BW,se);
  closing = imclose(BW,se);
  figure,
  subplot(3,2,1);imshow(I);title('Default');
  subplot(3,2,2);imshow(BW);title('Binarize');
  subplot(3,2,3);imshow(opening);title('Opening');
  subplot(3,2,4);imshow(closing);title('Closing');
  subplot(3,2,5);imshow(BW2);title('Perim');
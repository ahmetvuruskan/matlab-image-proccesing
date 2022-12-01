I = imread('coins.png');
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
hist = histogram(I);
figure,
imshow(BW1)
title('Sobel Filter')

figure
imshow(BW2)
title('Canny Filter')


I = imread('cameraman.jpg');
gray_scale = rgb2gray(I);
image1 = edge(gray_scale,'canny');
figure,
subplot(1,2,1),imshow(I);title('Orjinal Resim');
subplot(1,2,2),imshow(image1);title('Edge Dedection');
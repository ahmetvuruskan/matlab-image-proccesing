I = imread('onion.png');
I_mirror = flipdim(I,2);
I_reverse = flipdim(I,1);
I_mirrev = flipdim(I_reverse,2);

figure,
subplot(2,2,1), imshow(I);title('Original Image');
subplot(2,2,2), imshow(I_mirror);title('Mirror Image');
subplot(2,2,3), imshow(I_reverse);title('Reverse Image');
subplot(2,2,4), imshow(I_mirrev);title('Reverse + Mirror Image');

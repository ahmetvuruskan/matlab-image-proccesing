clc; clear;
I = imread('peppers.png');
figure(1),  imshow(I);
title('Dogal Renkli RGB g�r�nt�');

R = I(:,:,1); G = I(:,:,2);B=I(:,:,3);
%imshow(R) % K�rm�z� filtre
%imshow(G) % Ye�il Filtre
%imshow(B) % Mavi Fitre 

gri = 0.299*R+0.587*G+0.114*B;
figure(2);
imshow(gri);

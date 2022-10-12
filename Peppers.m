I = imread('peppers.png');
figure(1),  imshow(I);
title('Doagal Renkli RGB g�r�nt�');

R = I(:,:,1), G = I(:,:,2),B=I(:,:,3);
imshow(R) % K�rm�z� filtre

imshow(B) % Mavi Fitre 

gri = 0.299*R+0.587*G+0.114*B;
figure(2);
imshow(gri);
imshow(G) % Ye�il Filtre
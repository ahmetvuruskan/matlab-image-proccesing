I  = imread('circuit.tif');
figure ,
subplot(2,2,1),imshow(I), title('Image');
subplot(2,2,2),imhist(I,256), axis tight, title('histogram');
subplot(2,2,3),imhist(I,64),axis tight , title('Histogram with 65 bins');
subplot(2,2,4), imhist(I,32), axis tight , title('Histogram with 32 bins');
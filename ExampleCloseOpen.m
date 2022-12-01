I  = imread('text.png');
se = strel('disk',10);
open = imopen(I,se);
close= imclose(I,se);
closeopen = imopen(imclose(I,se),se);

figure,
subplot(2,2,1); imshow(I);title('original binary image');
subplot(2,2,2); imshow(open);title('Opening');
subplot(2,2,3); imshow(close);title('Closing');
subplot(2,2,4); imshow(closeopen);title('Closing + Opening');
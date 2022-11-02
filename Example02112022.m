I  = imread('text.png');
se = strel('square',3);
dilationsq = imdilate(I,se);
se = strel('diamond',3);
dilationdm = imdilate(I,se);
se = strel('line',9,0);
dilationbl = imdilate(I,se);
figure,
subplot(2,2,1); imshow(I);title('original binary image');
subplot(2,2,2); imshow(dilationsq);title('Dilation image 3x3 Square se');
subplot(2,2,3); imshow(dilationdm);title('Dilation image 3x3 Diamond se');
subplot(2,2,4); imshow(dilationbl);title('Dilation image 3x3 Line se');
>> 
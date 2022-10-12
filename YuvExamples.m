clc;clear;
for i = 1:256
    for j=1:256
        A(i,j)=j-1;
    end
end

figure, imshow(A,[0 255]);
figure , imagesc(A); colormap(gray);axis('image');  
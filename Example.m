clc;clear;
size =512;
A = zeros(size);
middle  = size/2;
x=256;
y=256;
r=100;
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
for i=156 : 356
    for j = 156 : 356
        A(i,j) = 1;
    end
end

figure, imshow(A);
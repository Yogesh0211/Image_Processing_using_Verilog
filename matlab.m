close all;
clear all;
clc;

b=imread('input.jpg'); % 24-bit BMP image RGB888 

k=1;
for i=512:-1:1 % image is written from the last row to the first row
for j=1:768
a(k)=b(i,j,1);
a(k+1)=b(i,j,2);
a(k+2)=b(i,j,3);
k=k+3;
end
end
fid = fopen('input.hex', 'wt');
fprintf(fid, '%x\n', a);
disp('Text file write done');disp(' ');
fclose(fid);

clc; clear all;
filesname = dir('*.jpg');
filenum = length(filesname);

for i=1:filenum
im= imread(filesname(i).name);
im2=rgb2gray(im);
name=[filesname(i).name(1:end-4),'.tif'];
imwrite(im2(1:512,1:512),name);
[IrData,IomData]=spectral2D(name,'tp',filesname(i).name(1:end-4));

xlswrite('data.xls',IrData',num2str(filesname(i).name(1:end-4)),'A3');
xlswrite('data.xls',IomData',num2str(filesname(i).name(1:end-4)),'H3');
%save('dataFig2b.txt','IrData','IomData','-ascii') 


end



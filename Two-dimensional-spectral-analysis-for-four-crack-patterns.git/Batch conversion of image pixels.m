clc; clear all;
filesname = dir('*.tif');
filenum = length(filesname);
for i=1:filenum
a= imread(filesname(i).name);
b= imresize(a,[1024 1024]);
name=['Fig.',filesname(i).name(1:end-4),'.jpg'];
imwrite(b,name)
end
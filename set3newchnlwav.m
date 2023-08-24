clc;
close all;
clear alll;
x= load('C:\Users\ranveer\Desktop\FYP\temp video file mat\setCsub02N.mat');
classA =x.d3;
signallength = 500;
fb = cwtfilterbank('SignalLength',signallength,'Wavelet','amor','VoicesPerOctave',12);
mkdir('waveletdataset');
%mkdir('waveletdataset\set2');
%eegtype =CLASSA;
nos = 100;
nol = 500;
colormap = jet(128);
folderpath=strcat ('C:\Users\ranveer\Desktop\FYP\temp video file mat\sub2\CC09\s3');

findx=0;
for i=[3,4,5,6,25,26,27,28,31]
    indx=0;
 for k=1:nos

eegsignal=classA(i,indx+1:indx+nol);

cfs = abs(fb.wt(eegsignal));

im = ind2rgb(im2uint8(rescale(cfs)),colormap);
filenameindex=findx+k;
filename=strcat (folderpath, sprintf('%d.jpg', filenameindex));
imwrite(imresize(im, [227 227]),filename); 
indx=indx+nol;

end

findx=findx+nos;
 end

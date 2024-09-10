clear all
close all
clc
cd('C:\Users\ricar\OneDrive\Documents\work\projects\WaterQ_indicators\Usserød Manuscript\PARAFAC_with_April2020\MatPlots\before_cropping')


I = imread('Fig5_before_crop.tif');
J = imcrop(I);
%%
cd('C:\Users\ricar\OneDrive\Documents\work\projects\WaterQ_indicators\Usserød Manuscript\PARAFAC_with_April2020\MatPlots')
imwrite(J,['Fig5_200dpi.tif'],'Resolution',200);%'Resolution',300

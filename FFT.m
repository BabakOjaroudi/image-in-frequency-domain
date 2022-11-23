clc;
clear;
close all;
img=imread('Capture.PNG');
% Convert RGB image to gray image
img1=rgb2gray(img);
% normalize the matrix to double
img2=double(mat2gray(img1));
% Take Fourier transform of the image then center shift the Fourier
% transformed imageimg
F=fftshift(fft2(img2));
% Take log of the image matrix
I=log(1+abs(F));
% Plot the images
subplot(2,2,1);
imshow(img);
title('Original Image');
subplot(2,2,2);
imshow(I);
title('Fourier transform of image');

I = rgb2gray(i);
bw = edge(I, 'Sobel');
figure
imshow(bw)
title('Edges of Original Image Sobel Method')

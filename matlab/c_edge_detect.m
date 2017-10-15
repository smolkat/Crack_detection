I = rgb2gray(i);
bw = edge(I, 'Canny', 0.25);
figure
imshow(bw)
title('Edges of Original Image Canny Method')

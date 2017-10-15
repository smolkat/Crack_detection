I = rgb2gray(i);
bw = edge(I, 'log');
figure
imshow(bw)
title('Edges of Original Image log Method')

I = rgb2gray(i);
BW = edge(I);
figure
imshow(BW)
title('Edges of Original Image')
theta = 0:179;
[R,xp] = radon(BW,theta);
figure
imagesc(theta, xp, R); colormap(hot);
xlabel('\theta (degrees)');
ylabel('x^{\prime} (pixels from center)');
title('R_{\theta} (x^{\prime})');
colorbar

%function [i2, properties] = complete_crack_extraction_algorithm(i)

figure 
imshow(i)
title('Original image before processing')

I = rgb2gray(i);
bw = edge(I, 'Canny', 0.27);
figure
imshow(bw)
title('Edges of Original Image Canny Method')

BW_out = bwpropfilt(bw, 'Area', [150 + eps(200), Inf]);
BW_out = bwpropfilt(BW_out, 'Perimeter', [70 + eps(100), Inf]);

properties = regionprops(BW_out, {'Area', 'Eccentricity', 'EquivDiameter', 'EulerNumber', 'MajorAxisLength', 'MinorAxisLength', 'Orientation', 'Perimeter'});

figure
imshow(BW_out)
title('Crack extracted')

arr = size(bw);
i2 = i;

for l =1:arr(1)
    
    for b =1:arr(2)
        
        if BW_out(l,b)==1
            
            for h = 1:20
                
                if (l+10-h > 0) && (b+10-h > 0) && (l+10-h < arr(1)) && (b+10-h < arr(2))
                    i2(l+10-h, b+10-h, 1) = 255;
                end
                
            end
        end
    end
end

figure
imshow(i2)
title('Highlighted image of crack')

figure
subplot(2,2,1)
imshow(i)
subplot(2,2,2)
imshow(bw)
subplot(2,2,3)
imshow(BW_out)
subplot(2,2,4)
imshow(i2)

clc
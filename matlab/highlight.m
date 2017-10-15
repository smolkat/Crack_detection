arr = size(bw);
i2 = i;

for l =1:arr(1)
    
    for b =1:arr(2)
        
        if bw_o(l,b)==1
            
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


function result = kakkar(I) 
blue = I(:,:,3);
level = 0.37;
bw2 = imbinarize(blue,level);
fill = imfill(bw2, 'holes');
%clear = fill;
clear = imclearborder(fill);
numWhitePixels = nnz(clear);
numberOfPixels = numel(clear);
pow = numWhitePixels/numberOfPixels*100;        %percentage of white pixels;

if(pow>=13)
    result = 'paper';
else if(pow>=11)
        result = 'rock';
    else
        result = 'scissor';
    end
end

end
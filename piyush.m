I = imread('white_rock2.jpg');
blue = I(:,:,3);
level = 0.37;
bw2 = im2bw(blue,level);
imshow(bw2);
numWhitePixels = nnz(bw2);
numberOfPixels = numel(bw2);
percentage_of_white = numWhitePixels/numberOfPixels*100
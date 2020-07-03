 %Read input image
 
 img_input = imread('input.jpg');
 
 %img_inputimg_input = imread(inputimage);
 img_height = size(img_input,1);
 img_width = size(img_input,2);

 %Initialize the images
 out = img_input;
 bin = zeros(img_height,img_width); 
 %Apply Grayworld Algorithm Img_gray =
 grayworld(img_input);

 %Convert from RGB to YCbCr
 imgycbcr = rgb2ycbcr(img_gray);
 YCb = imgycbcr(:,:,2);
 YCr = imgycbcr(:,:,3);

 %Detect Human Skin
 [r,c,v] = find(YCb>=77 & YCb<=127 & YCr>=133 & YCr<=173);
 numind = size(r,1);

 %Mark Humain Skin Pixels
 for i=1:numind
 out(r(i),c(i),:) = [0 0 255];
 bin(r(i),c(i)) = 1;
 end
 img_show(img_input);
 figure; img_show(out);
 figure; img_show(bin);
 
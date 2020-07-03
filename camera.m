function camera()
cam = webcam(1);
img = snapshot(cam);
folder = "C:\Users\12367\Desktop\ENSC180 project";
basefileName = "playerimg.png";
fullfileName = fullfile(folder,basefileName);
imwrite(img , fullfileName);
end
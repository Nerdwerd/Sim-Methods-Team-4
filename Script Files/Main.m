%Jackson Harris, Thomas Edwards, Quentin Saba, Connor Richard, Jackson
%Wolfe
clear;
clc;
%https://www.rapidtables.com/web/color/purple-color.html

I1 = imread("Images\Image1.jfif");
I2 = imread("Images\Image2.png");
I3 = imread("Images\Image3.jpg");
I4 = imread("Images\Image4.png");

x = size(I1)
%O = P2Y(I);
Y = P2Y(I1);
%imshow(O);
imshow(Y);




function ImageOut = P2Y(ImageIn)
    
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [255;255;0]; %Yellow color to set

    %Runs through each part of the Image matr

    %Runs through each part of the Image matrix
    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            rg = ImageIn(r,c,1)/ImageIn(r,c,2);
            bg = ImageIn(r,c,3)/ImageIn(r,c,2);
            if ((rg >= 1.1) && (bg >= 1) && ImageIn(r,c,1) > 90 && ImageIn(r,c,3) > 90)
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            
        end
    end

    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            
            if (ImageIn(r,c,1) > 10) && (ImageIn(r,c,2) < 60) && (ImageIn(r,c,3) > 100)
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            
        end
    end

    ImageOut = ImageIn;
end
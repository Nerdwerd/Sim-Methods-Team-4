%Jackson Harris, Thomas Edwards, Quentin Saba, Connor Richard, Jackson
%Wolfe
clear;
clc;
%https://www.rapidtables.com/web/color/purple-color.html

I1 = imread("Images\Image1.jfif");
I2 = imread("Images\Image2.png");
I3 = imread("Images\Image3.jpg");
I4 = imread("Images\Image4.png");

Y = P2Y(I4);

imshow(Y);




function ImageOut = P2Y(ImageIn)
    f = 0;
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [255;255;0]; %Yellow color to set

    %Runs through each part of the Image matr

    %Runs through each part of the Image matrix
    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            rg = ImageIn(r,c,1)/ImageIn(r,c,2);
            bg = ImageIn(r,c,3)/ImageIn(r,c,2);
            br = ImageIn(r,c,3)/ImageIn(r,c,1);
            if ((rg >= 1.1) && (bg >= 1.1) && (ImageIn(r,c,1) > 30 && ImageIn(r,c,3) > 30))
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            
        end
    end

    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            t1 = abs(ImageIn(r,c,1) - ImageIn(r,c,2));
            t2 = abs(ImageIn(r,c,1) - ImageIn(r,c,3));
            if t1 < 3 && t2 < 3
                f = 1;
            end
            if (ImageIn(r,c,1) > 90) && (ImageIn(r,c,3) > 100) && (ImageIn(r,c,2) < 230) && f ~= 1 
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            f = 0;
        end
    end

    ImageOut = ImageIn;
end
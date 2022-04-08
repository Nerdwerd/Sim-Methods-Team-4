%Jackson Harris, Thomas Edwards, Quentin Saba, Connor Richard, Jackson
%Wolfe

%https://www.rapidtables.com/web/color/purple-color.html

I = imread("Images\Image1.jfif");
P = imread("Images\Image4.png");

x = size(I)
%O = P2Y(I);
Y = P2Y2(I);
imshow(O)
imshow(Y);




function ImageOut = P2Y(ImageIn)
    
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [255;255;0]; %Yellow color to set

    %Runs through each part of the Image matrix
    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            
            if (ImageIn(r,c,1) > 10) && (ImageIn(r,c,2) < 130) && (ImageIn(r,c,3) > 100)
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            
        end
    end
    ImageOut = ImageIn;
end

function ImageOut = P2Y2(ImageIn)
    
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [255;255;0]; %Yellow color to set

    %Runs through each part of the Image matrix
    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            rg = ImageIn(r,c,1)/ImageIn(r,c,2);
            bg = ImageIn(r,c,3)/ImageIn(r,c,2);
            if ((rg >= 1) && (bg >= 1) && ImageIn(r,c,1) > 80 && ImageIn(r,c,3) > 80)
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            
        end
    end
    ImageOut = ImageIn;
end
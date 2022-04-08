%Jackson Harris, Thomas Edwards, Quentin Saba, Connor Richard, Jackson
%Wolfe

%https://www.rapidtables.com/web/color/purple-color.html

I = imread("Images\Image2.png");


x = size(I)
O = P2Y(I);

imshow(O)




function ImageOut = P2Y(ImageIn)
    
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [255;255;0]; %Yellow color to set

    %Runs through each part of the Image matrix
    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            
            if (ImageIn(r,c,1) > 100) && (ImageIn(r,c,2) < 100) && (ImageIn(r,c,3) > 110)
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end

        end
    end
    ImageOut = ImageIn;
end
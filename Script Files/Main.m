%Jackson Harris, Thomas Edwards, Quentin Saba, Connor Richard, Jackson
%Wolfe

%https://www.rapidtables.com/web/color/purple-color.html

I = imread("Images\Image1.jfif");

test = [I(10,10,1),I(10,10,2),I(10,10,3)]

x = size(I)

imshow(I)




function ImageOut = P2Y(ImageIn,pvalues)
    
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [0;0;0]; %Yellow color to set

    %Runs through each part of the Image matrix
    for r = 0:cvalues(1)
        for c = 0:cvalues(2)
            for rbg = 0:cvalues(3)

            end
        end
    end
end
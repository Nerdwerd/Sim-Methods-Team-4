%Jackson Harris, Thomas Edwards, Quentin Saba, Connor Richard, Jackson
%Wolfe
clear;
clc;
%https://www.rapidtables.com/web/color/purple-color.html

%%Input Images and Insert into Function -- Connor Richard
I1 = imread("Images\Image1.jfif");
I2 = imread("Images\Image2.png");
I3 = imread("Images\Image3.jpg");
I4 = imread("Images\Image4.png");

%%------------------Rewriting new image--------------- 
Y1 = P2Y(I1);
Y2 = P2Y(I2);
Y3 = P2Y(I3);
Y4 = P2Y(I4);
%------------Presenting the new image----------------------- Quentin Saba
subplot(1,2,1),imshow(I1)
subplot(1,2,2),imshow(Y1)
figure;
subplot(1,2,1),imshow(I2)
subplot(1,2,2),imshow(Y2)
figure;
subplot(1,2,1),imshow(I3)
subplot(1,2,2),imshow(Y3)
figure;
subplot(1,2,1),imshow(I4)
subplot(1,2,2),imshow(Y4)
%-------Rewriting new image files to new image folder---------------------
imwrite(Y1,'New_Images\Image1_A.PNG');
imwrite(Y2,'New_Images\Image2_A.PNG');
imwrite(Y3,'New_Images\Image3_A.PNG');
imwrite(Y4,'New_Images\Image4_A.PNG');




function ImageOut = P2Y(ImageIn)
    f = 0;
    cvalues = size(ImageIn); %Size of the image by row, column, and RGB values
    
    yvalues = [255;255;0]; %Yellow color to set

    %Runs through each part of the Image matrix -- Jackson Wolfe
    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            %%Thomas Edwards
            rg = ImageIn(r,c,1)/ImageIn(r,c,2); %ratio between red and green colors 
            bg = ImageIn(r,c,3)/ImageIn(r,c,2); %ratio between blue and green colors
            % if the ratio are greater than or equal to these numbers then change to yellow
            if ((rg >= 1.1) && (bg >= 1.1) && (ImageIn(r,c,1) > 30 && ImageIn(r,c,3) > 30)) 
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            
        end
    end

    for r = 1:cvalues(1)
        for c = 1:cvalues(2)
            %%This is an extra loop to catch any missed pixels. - Jackson Harris
            t1 = abs(ImageIn(r,c,1) - ImageIn(r,c,2)); %t1 & t2 measure the difference 
            t2 = abs(ImageIn(r,c,1) - ImageIn(r,c,3)); %between the red, green, and blue values.
            if t1 < 3 && t2 < 3 %If both are less than 3 apart then f = 0 and this means color is grey.
                f = 1;
            end
            %This puts bounds on all three colors and makes sure the color
            %isn't grey.
            if (ImageIn(r,c,1) > 90) && (ImageIn(r,c,3) > 100) && (ImageIn(r,c,2) < 230) && f ~= 1 
                ImageIn(r,c,1) = yvalues(1);
                ImageIn(r,c,2) = yvalues(2);
                ImageIn(r,c,3) = yvalues(3);
            end
            f = 0; %Resets the variable used to check if grey.
        end
    end
    ImageOut = ImageIn; %Sets output variable to the converted input variable.
end
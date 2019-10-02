# Question A

# part a

using JLD
using PyPlot

image = imread("el-capitan.png")
imshow(image)
size(image)

# part b

function extractRGB(String)
    image = imread(String)
    imshow(image)
    R = image[:,:,1]
    G = image[:,:,2]
    B = image[:,:,3]
    return [R, G, B]
end

println("Reset with git reset --mixed")

## part e

image2 = zeros(360, 640, 3)
image2[:,:,1] = extractRGB("el-capitan.png")[2]
image2[:,:,2] = extractRGB("el-capitan.png")[3]
image2[:,:,3] = extractRGB("el-capitan.png")[1]

subplot(1,2,1)
imshow(image)
title("Original image")
axis("off")
subplot(1,2,2)
imshow(image2)
title("Image with inverted RGB values")
axis("off")

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
    G = image[:,1,:]
    B = image[1,:,:]

    println("Reset with git reset --mixed")
end

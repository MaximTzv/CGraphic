
import Cgd

let image = gdImageCreateTrueColor(800, 600)

let red = gdImageColorAllocateAlpha(image, 255, 0, 0, 0)
let blue = gdImageColorAllocateAlpha(image, 0, 0, 255, 0)

gdImageFill(image, 0, 0, red)
gdImageFilledEllipse(image, 400, 300, 200, 100, blue)

let outputFile = fopen("output.png", "wb")

defer { fclose(outputFile) }

gdImagePng(image, outputFile)

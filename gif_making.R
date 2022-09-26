## Making gif ##

library(magick)
imgs <- list.files("gif", pattern = ".jpg", full.names = TRUE)

img_list <- lapply(imgs, image_read)

## join the images together
img_joined <- image_join(img_list)

## animate at 2 frames per second
img_animated <- image_animate(img_joined,
                              fps = 0.5)

## save to disk
image_write(image = image_scale(img_animated, "1000x667"),
            path = "gif//lab-imgs.gif")

if mode == 1 {
    y=floor(ystart+sin(objScreen.image_index/32)*64);
} else if mode == 2 {
    y=floor(ystart+cos(objScreen.image_index/32)*64);
}


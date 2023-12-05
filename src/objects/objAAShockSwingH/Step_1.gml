/// @description  Swing platform
// calculate angle
angle = angle_wrap(270+cosine[objScreen.image_index mod 360]*length);
// apply angle
x = xstart+floor(cosine[angle]*136);
y = ystart-floor(sine[angle]*136);


with (other) {
/// Rise and float
if moving and height>target_y {
    height -= 0.75;
}
// float in water
y = floor(height+cos(objScreen.image_index*0.015625)*16);


}

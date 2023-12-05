/// @description  Animations
// shimering water
shimmer[0].image_alpha = 0.25*abs(cosine[(objScreen.image_index*2) mod 360]);
shimmer[1].image_alpha = 0.15*abs(sine[(objScreen.image_index*2) mod 360]);
shimmer[2].image_alpha = 0.15*abs(cosine[(objScreen.image_index*2) mod 360]);


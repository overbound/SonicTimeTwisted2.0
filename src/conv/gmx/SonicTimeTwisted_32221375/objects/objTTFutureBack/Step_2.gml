action_inherited();
/// Update horizon
//with water other.horizon.absolute_y = y;
//horizon.image_index = objScreen.image_index*0.34;

//star flash
stars1.image_alpha = 0.5+abs(cos(degtorad(objScreen.image_index*2.4)))*0.5;
stars2.image_alpha = 0.5+abs(sin(degtorad(objScreen.image_index*2.4)))*0.5;
/*
if instance_exists(underwater_rig) {
    with objLevel.player[0] {
         if underwater == true {
            
            other.underwater_rig.depth = 20;
            
         }
        else other.underwater_rig.depth = 1025;
    }
}
*/

/* */
/*  */

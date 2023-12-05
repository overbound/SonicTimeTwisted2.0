/// @description  Movement
if objLevel.player[0] != noone {
    if xstart-128 < x && xstart+128 > objLevel.player[0].x && objLevel.player[0].x > xstart - 128 && objLevel.player[0].x < xstart+128 {
        x = objLevel.player[0].x;
    }
}
// Extropolate on left and right
/*
if xstart-128 < x && x > objLevel.player[0].x {
    x -=1;
}
if xstart+128 > x && x < objLevel.player[0].x {
    x +=1;
}
*/

/* */
/*  */

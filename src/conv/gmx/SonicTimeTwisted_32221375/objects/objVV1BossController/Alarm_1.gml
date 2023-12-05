/// @description  Collapse
// setup collapsing floor
for (var i=0; i<15; i+=1)
{
    //collapse[i].vspeed = 2+(i mod 2);
    collapse[i].gravity = 0.02734375+((i mod 2)*0.02734375); //0.109375+((i mod 2)*0.109375);
    collapse[i].remove = 2;
}
// sound
play_sfx(sndCollapse, 10);


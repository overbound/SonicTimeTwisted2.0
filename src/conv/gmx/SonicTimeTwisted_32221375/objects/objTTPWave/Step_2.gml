
with handle {
    other.x=xx+other.xoffset;
    other.y=yy+other.yoffset;
}
xoffset+=1;
with objPlayer {
    if underwater
        other.visible = false;
    else other.visible = true;
        }


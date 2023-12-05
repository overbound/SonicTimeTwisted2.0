if objProgram.in_past == false {
    visible = !visible;
}

y=ystart+cos(step/8)*8;
with child {
    y=ystart+sin(other.step/8)*8;
}
step+=1;


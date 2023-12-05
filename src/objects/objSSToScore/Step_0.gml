/// @description  Get transition mode
switch mode
{
case 0:
// wait
break;
case 1:
    if (image_alpha<=0) {
        mode = 2;
    }
    image_alpha -= .0125;
    break;
case 2: // fade in
    with objLevel { 
        started = true; 
        timer_enabled = true;
        }
    instance_destroy();
    break;
}


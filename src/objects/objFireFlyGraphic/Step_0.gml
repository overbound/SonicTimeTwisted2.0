if leftSwitch == 1 {
    leftRotation=angle_wrap(leftRotation+20);
    
    if leftRotation > 40 && leftRotation < 90 {
        leftSwitch=-1;
    }
} else if leftSwitch == -1 {
        leftRotation=angle_wrap(leftRotation-20);
        
        if leftRotation < 320 && leftRotation > 90 {
            leftSwitch=1;
        }
    }
if rightSwitch == 1 {
    rightRotation=angle_wrap(rightRotation+20);
    
    if rightRotation > 40 && rightRotation < 90 {
        rightSwitch=-1;
    }
} else if rightSwitch == -1 {
        rightRotation=angle_wrap(rightRotation-20);
        
        if rightRotation < 320 && rightRotation > 90 {
            rightSwitch=1;
        }
    }


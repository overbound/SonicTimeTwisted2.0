offsetX = dcos(angle) * span * 0.75;
offsetZ = dsin(angle) * span;
if instance_exists(objGolem)
    if objGolem.state != "grounded" //objGolem.state != "hit" && objGolem.state != "target"
        image_index = round(angle / 45);


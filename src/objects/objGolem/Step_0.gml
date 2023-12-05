/// @description check if inview set remove to 0
if in_view(view_current,0) {
    
    remove = 0;
    with objLevel.player[0] {
        if camera.bottom < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) {
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (2) );
        
        }
    
    }
    
}

with (other) {
/// State Machine
if (timer) {
    timer -= 1;
} else {
    switch (state) {
        case "fly up":
            rootY = toward(rootY, 1024, 5);
            if (rootY == 1024) {
                state = "float down";
                timer = 32;
                posZ = -__view_get( e__VW.WView, 0 ) + 3;
                break;
            }
            if (causeQuake and rootY < floor_level) {
                causeQuake = false;
                screen_shake();
                play_sfx(sndGolemFlying,1);
            }
            break;
        case "float down":
            rootY = toward(rootY, 1446, 3);
            if (rootY == 1446) {
                state = "recover";
                float = true;
                timer = 32;
                wait = __RecoverTime;
            }
            break;
        case "spin":
            with(objGolemHand) {
                    if (other.sideDown == -1 && instance_exists(objLevel.player[0])) {
                        if (objLevel.player[0].terrain_id == id) {
                            other.sideDown = sideOn;
                            dangerous = false;
                            causeQuake = true;
                        }
                    }
                    if image_xscale < .84 {
                        depth_mask = 4;
                        reaction_script2 = noone;
                    } else {
                        depth_mask = 3;
                        //reaction_script2 = player_reaction_golem_hand_target;
                        reaction_script2 = player_reaction_golem_hand;
                    }

                    if (other.sideDown == sideOn) {
                        _speed = toward(_speed, 0, other.spinSpeed / 2);
                        targetX = other.posX + offsetX;
                        targetY = other.floor_level - 16;
                        targetZ = 0;
                        factor = toward(factor, 1, 0.1);
                        if (factor == 1) {
                            if (causeQuake) {
                                causeQuake = false;
                                screen_shake();
                                play_sfx(sndGolumnLand, 4);
                                // rumble
                                rumble(rumble_short_strong);
                                
                            }
                            if (plat_speed != 0)
                                if ((other.frame & 3) == 0) {
                                    var sgn;
                                    sgn = -sign(plat_speed);
                                    with(SparksNew(x - 48 * sgn, y + 16, -1)) image_xscale = sgn;
                                }
                        }
                    } else {
                        _speed = toward(_speed, other.spinDirection * other.spinSpeed, other.spinSpeed / 5);
                    }
                    angle = wrap(angle + _speed, 360);
                    //BossHandUpdate();
                }
                // one hand hits other
            if abs(hand[0].angle - hand[1].angle) < 15 && abs(hand[0].y - hand[1].y) < 44 {
                state = "hit";
                BossBreakArm(sideDown, -spinDirection);
                with objGolemHand {
                    reaction_script = noone;
                    depth_mask = 4;
                    alarm[1] = -1;
                    alarm[0] = -1;
                    reaction_script2 = noone;
                }
                with objLevel.player[0] {
                    if landed && (terrain_id == other.hand[0] || terrain_id == other.hand[1]) {
                        player_is_falling();
                    }
                }
            }
            break;
        case "hit":
            with(hand[!sideDown]) {
                factor = toward(factor, 0, 0.02);
                _speed = toward(_speed, other.spinDirection * 4, 0.1);
                angle = wrap(angle + _speed, 360);
                span = toward(span, 0, other.__SwingSpeed);
                offsetY = toward(offsetY, -260, other.__SwingSpeed);
                image_angle = lerp_wrap(image_angle, 0, 0.1, 1, 360);
                if (span < 100)
                    if (instance_number(objGolemTarget) == 0) {
                        TargetNew(other.__TargetTime);
                    }
                if (span == 0)
                    if (offsetY == -260) {
                        targetX = other.posX + offsetX;
                        targetY = other.posY + offsetY;
                        targetZ = other.posZ + offsetZ;
                        factor = 1;
                        angle = 90;
                        image_index=2;
                        //dangerous = true;
                        collide = true;
                        other.state = "target";
                        reaction_script2 = player_reaction_golem_hand_target;
                    }
                //BossHandUpdate();
            }
            break;
        case "target":
            with(hand[!sideDown]) {
                image_angle = toward_wrap(image_angle, 90 * other.spinDirection, 9, 360);
                image_index=2;
                if (objGolemTarget.timer == 0) {
                    targetX = Lerp(targetX, objGolemTarget.x, 0.1, 1);
                    targetY = toward(targetY, other.floor_level - 64, 8);
                    targetZ = Lerp(targetZ, 0, 0.25, 1);
                    if (targetY == other.floor_level - 64)
                        if (targetZ == 0) {
                            offsetY = 0;
                            other.state = "grounded";
                            other.wait = other.__GroundedTime;
                            play_sfx(sndGolemSlam,4);
                            span = 426;
                            angle = radtodeg(arccos(max(min((posX - other.posX) / span,1),-1)));
                            with(objGolemTarget) instance_destroy();
                            screen_shake();
                        }
                }
                //BossHandUpdate();
            }
            break;
        case "grounded":
            if (hand[!sideDown].hit != 0) {
                BossBreakArm(!sideDown, hand[!sideDown].hit);
                hand[!sideDown].hit = 0;
                state = "recover";
                wait = __RecoverTime;
                
                if (!life) {
                    stop_all_music(false);
                    alarm[1] = 1;
                    alarm[2] = 40;
                    alarm[3] = 70;
                    alarm[4] = 100;
                    alarm[5] = 130;
                    alarm[6] = 160;
                }
                if __RandomDirection
                spinDirection = choose(-1, 1);
                else spinDirection = -spinDirection;
                if (spinSpeed < __MaxSpinSpeed) spinSpeed += __SpinSpeedInc;
                with(objGolemHand) {
                    if sideOn == 0
                    angle = 180;
                    else angle = 0;
                    _speed = 0;
                    span = 428;
                    factor = 0;
                    //BossHandUpdate();
                }
                sideDown = -1;
                timer = 120;
                break;
            }
            if (wait) {
                wait -= 1;
                if (wait == __GroundedTime - 15) hand[!sideDown].dangerous = false;
            } else {
                state = "hit";
                hand[!sideDown].collide = false;
            }
            break;
        case "recover":
            if (!life) {
                        
                state = "toast";
               //timer = 120;
               gravity=.125;
               timer = 60;
               play_sfx(sndSealBombLaunch,3);
                  //stop_level_music();
                //  objLevel.silence = true;
  
                if instance_exists(objLevel.player[0]) {
                    with objLevel.player[0] {
                        camera.right = 18752;
                    }
                }
                break;
            }
            with(objGolemHand) {
                posX = Lerp(posX, other.posX + offsetX, 0.1, 1);
                posY = Lerp(posY, other.posY + offsetY, 0.1, 1);
                posZ = Lerp(posZ, other.posZ + offsetZ, 0.1, 4);
                factor = toward(factor, 0, 0.1);
                image_angle = lerp_wrap(image_angle, 0, 0.1, 1, 360);
                //BossHandUpdate();
            }
            with(objGolemOrb) {
                h = other.hand[sideOn]
                posX = Lerp(posX, other.posX + h.offsetX * distance, 0.1, 1);
                posY = Lerp(posY, other.posY + h.offsetY * distance, 0.1, 1);
                posZ = Lerp(posZ, other.posZ, 0.1, 4);
                image_angle = lerp_wrap(image_angle, 0, 0.1, 1, 360);
            }
            if (wait) {
                if (wait == __RecoverTime) play_sfx(sndGolemRecover,4);
                wait -= 1;
            } else {
                with(objGolemHand) {
                    collide = true;
                    dangerous = false;
                    reaction_script2 = player_reaction_golem_hand_target;
                    reaction_script = player_reaction_golem_hand;
                    depth_mask = 3;
                }
                state = "spin";
                with(objGolemHand) {
                    broken = false;
                }
                with(objGolemOrb) broken = false;
            }
            break;
        case "toast":
            float = false;
            //rootY = toward(rootY, -170, 5);
            rootY = toward(rootY, room_height, 5);
            
            if floor(objScreen.image_index) mod 4 == 0 {
               with instance_create(x-16,y+16,objSmokePuff) depth = 20;
               with instance_create(x+16,y-24,objSmokePuff) depth = 20;
            }
            break;
    }
}

}
// standard control
if (float) {
    floatAngle += 2;
}
if (flash) {
    if (flash & 4) image_blend = c_red;
    else image_blend = c_white;
    flash -= 1;
}
posY = floor(rootY + sin(degtorad(floatAngle)) * 8);
with(objGolemHand) {
    if (!broken) {
        posX = Lerp(other.posX + offsetX, targetX, factor, 1);
        posY = Lerp(other.posY + offsetY, targetY, factor, 1);
        posZ = Lerp(other.posZ + offsetZ, targetZ, factor, 1);
    }
    if (other.showCollision) {
        if (dangerous) image_blend = c_red;
        else image_blend = c_white;
        if (collide) image_alpha = 1;
        else image_alpha = 0.5;
    }
}
with(objGolemOrb) {
    if (!broken) {
        var h;
        h = other.hand[sideOn];
        posX = Lerp(other.posX, h.posX, distance, 0);
        posY = Lerp(other.posY, h.posY, distance, 0);
        posZ = Lerp(other.posZ, h.posZ, distance, 0);
    }
    if (_gravity != 0) {
        image_angle += 16;
        if (y >= 1600) {
            _gravity = 0;
            speedX = 0;
            speedY = 0;
        }
    }
}
with(objGolemHand) {
    if (_gravity != 0) {
        image_angle += 16;
        if (y >= 1600) {
            _gravity = 0;
            speedX = 0;
            speedY = 0;
        }
    }
}
updateGolemObjects(self);
updateGolemObjects(objGolemHand);
updateGolemObjects(objGolemArm);
updateGolemObjects(objGolemOrb);
frame += 1;

/// smoke if exploded
if life <= 0 {
    if floor(objScreen.image_index) mod 8 == 0 {
        instance_create(x-16,y+16,objSmokePuff);
        instance_create(x+16,y-24,objSmokePuff);
    }
}


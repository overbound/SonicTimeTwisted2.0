/// @description  turn if off screen


if destroyed exit;

var offset = 128;

with objLevel.player[0] {
if camera.left > other.x+128 && other.image_xscale == 1  && objEggWalkerBossController.state > 1{

with other {

        image_xscale = -1;
        event_perform(ev_other,ev_user0);
        
    }

}else if camera.right < other.x-128 && other.image_xscale == -1 && objEggWalkerBossController.state > 1 {

with other {

        image_xscale = 1;
        event_perform(ev_other,ev_user0);
        
    }

}
}


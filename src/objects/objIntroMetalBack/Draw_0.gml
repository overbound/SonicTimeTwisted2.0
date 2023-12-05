if state < 2 draw_self();
else if state < 3 {
        draw_sprite(sprMetalStreak,image_index,112,0);
        gpu_set_blendmode(bm_add);
        draw_sprite(sprMetalStreakAdd,image_index,112,0);
        gpu_set_blendmode(bm_normal);
    }


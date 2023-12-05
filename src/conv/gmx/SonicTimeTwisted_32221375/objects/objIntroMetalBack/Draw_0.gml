if state < 2 draw_self();
else if state < 3 {
        draw_sprite(sprMetalStreak,image_index,112,0);
        draw_set_blend_mode(bm_add);
        draw_sprite(sprMetalStreakAdd,image_index,112,0);
        draw_set_blend_mode(bm_normal);
    }


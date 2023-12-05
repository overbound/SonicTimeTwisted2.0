/// @description  Get pool
pool = instance_nearest(x,y,objWater);
with pool { other.pool_height = y+other.y;
        bottom = bbox_bottom;
    }


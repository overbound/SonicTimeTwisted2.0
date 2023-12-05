//check if platform is out of view (or should be)
if poll_id.bbox_top -64 > y {
    instance_destroy();
}

y-=2;


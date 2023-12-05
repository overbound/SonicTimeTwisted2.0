action_set_relative(1);
boss.life += -1;
{
action_set_relative(0);
action_set_timeline_position(609);
action_set_relative(1);
}
with boss if life<=0 event_user(0);

action_set_relative(0);

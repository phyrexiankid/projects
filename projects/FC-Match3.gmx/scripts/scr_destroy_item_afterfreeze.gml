///scr_destroy_item_afterfreeze(id)

var target=argument0;

with target {
if row=1 obj_controller_gameplay.alarm[column]=room_speed/alarmtime;
obj_controller_gameplay.item[column,row]=0;
instance_destroy();
with shadow instance_destroy();
}

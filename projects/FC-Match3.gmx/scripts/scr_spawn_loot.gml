///scr_spawn_loot()

var index=argument0; //это номер аларма, 
//соответственно каким по счету этот лут вылетает

var drop=instance_create(room_width/2,987,obj_boolmark_shest_drop);
drop.pre_dest_x = room_width/2+lengthdir_x(280+num*10,angle+(360/num)*index);
drop.pre_dest_y = 987+lengthdir_y(280+num*10,angle+(360/num)*index);
if index=1 and num=1 {
drop.pre_dest_x = room_width/2;
drop.pre_dest_y = 987;
}
drop.type   = loot_type[index];
drop.depth=-(202+index)
drop.number=drop_number[index];
if index=num drop.last=1;



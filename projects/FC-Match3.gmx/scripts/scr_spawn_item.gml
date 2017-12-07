///scr_spawn_item(column)

var h = argument0;

var item=instance_create(523+(h-1)*201,633-obj_controller_gameplay.ver_shift,obj_item);
item.row = 0;
item.column = h;
item.ver_shift = obj_controller_gameplay.ver_shift;
item.top_cell = 633;


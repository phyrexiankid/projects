///scr_transition_to(room)

//просто правильные переходы по комнатам с разрушением сюрфов

var goto = argument0;
// goto 0 = game_restart();

instance_activate_all();
    
with all {
    if object_get_name(object_index)!='Main' and object_get_name(object_index)!='mtf' {
        instance_destroy();
    }
}
    
for(var i=0;i<ds_list_size(Main.surface_list);i++) {
    surface_free(ds_list_find_value(Main.surface_list,i));
}

if goto=0 game_restart();
else room_goto(goto);

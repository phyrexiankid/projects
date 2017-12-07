///scr_recreate_surf_mission(id)

//перерисовывает или создает сюрфейс облачка с миссиями
with argument0 {//target

surface_free(mission_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,mission_surf));
mission_surf = surface_create(512,256);
ds_list_add(Main.surface_list,mission_surf);

surface_set_target(mission_surf);
var size=ds_list_size(mission_index_list);
for(var i=0; i<size; i++) {
    rast = 250-50*(size-1);
    var shift = 294-(rast*(size-1))/2+(rast*i);
    draw_sprite_ext(sp_gameplay_items,ds_list_find_value(mission_index_list,i),shift,124,1-0.2*(size-2),1-0.2*(size-2),0,noone,1);
    draw_set_color(color_mission_circle);
    draw_circle(shift+45,124+46,27,0);
}
surface_reset_target();

}

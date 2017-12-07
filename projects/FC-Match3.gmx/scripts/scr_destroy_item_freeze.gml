///scr_destroy_item_freeze(id)

var target=argument0;

with target {
if row!=0 {

//если на итеме висели эффекты
//if effect_destroy_row!=0 scr_itemeffect_destroy_row(id,effect_destroy_row-1); //ломает ряд

//если выбил предмет для миссии
var summ_number = 0;
var size=ds_list_size(obj_controller_gameplay.mission_index_list);
for(var i=0; i<size; i++) {
    if index=ds_list_find_value(obj_controller_gameplay.mission_index_list,i) {

        ds_list_replace(obj_controller_gameplay.mission_num_list,i,ds_list_find_value(obj_controller_gameplay.mission_num_list,i)-1);
        if ds_list_find_value(obj_controller_gameplay.mission_num_list,i)<=0 {//выпилить это из обоих листов
            ds_list_delete(obj_controller_gameplay.mission_index_list,i);
            ds_list_delete(obj_controller_gameplay.mission_num_list,i);
            scr_recreate_surf_mission(obj_controller_gameplay);
            if ds_list_size(obj_controller_gameplay.mission_index_list)<=0 game_restart();
        } else {
            obj_controller_gameplay.color_mission[i]=c_lime;
            obj_controller_gameplay.alarm[6+i]+=5;
        }
    }
}

//particles
part_particles_create_color(obj_controller_gameplay.part_sys_items,x,y,obj_controller_gameplay.part_type_pieces,scr_item_color(index),round(random_range(3,5)));
part_particles_create(obj_controller_gameplay.part_sys_items,x,y,obj_controller_gameplay.part_type_dust,round(random_range(4,8)));

visible=0;
shadow.visible=0;
obj_controller_gameplay.alarm[9]=6;
}
}

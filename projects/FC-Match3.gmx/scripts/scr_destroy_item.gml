///scr_destroy_item(id)

var targett=argument0;

with targett {
if visible=0 exit;

//звук лопанья
var ptch=random_range(0.5,1.25);
var gain=random_range(0.5,0.75);
scr_sound(snd_pop,0.8,0,ptch,gain);

//если на итеме висели эффекты
if effect_destroy_row!=0 {
    with obj_item_white {
    if target=other {
        if active=1 scr_itemeffect_destroy_row(target,image_angle/90); //ломает ряд
        
        instance_destroy();
    }}
    effect_destroy_row=0;
}

//если выбил предмет для квеста
for(var i=0;i<3;i++) {
    if index=Main.quest_type[i] {
        //выбил чето, +1 и сохранить
        Main.quest_progress[i]+=1;
        scr_save();
    }
}

//если выбил предмет для миссии
var summ_number = 0;
var size=ds_list_size(obj_controller_gameplay.mission_index_list);
for(var i=0; i<size; i++) {
    if index=ds_list_find_value(obj_controller_gameplay.mission_index_list,i) {
        obj_controller_gameplay.mission_item+=1;
        ds_list_replace(obj_controller_gameplay.mission_num_list,i,ds_list_find_value(obj_controller_gameplay.mission_num_list,i)-1);
        if ds_list_find_value(obj_controller_gameplay.mission_num_list,i)<=0 {//выпилить это из обоих листов
            ds_list_delete(obj_controller_gameplay.mission_index_list,i);
            ds_list_delete(obj_controller_gameplay.mission_num_list,i);
            scr_recreate_surf_mission(obj_controller_gameplay);
            if ds_list_size(obj_controller_gameplay.mission_index_list)<=0 {
                obj_controller_gameplay.finished = 1
            }
        } else {
            obj_controller_gameplay.color_mission[i]=c_lime;
            obj_controller_gameplay.alarm[6+i]+=5;
        }
    }
}

//particles
part_particles_create_color(obj_controller_gameplay.part_sys_items,x,y,obj_controller_gameplay.part_type_pieces,scr_item_color(index),round(random_range(3,5)));
part_particles_create(obj_controller_gameplay.part_sys_items,x,y,obj_controller_gameplay.part_type_dust,round(random_range(4,8)));

//спаун мухи с улучшением
if selected_num mod 6 = 0{
    for(var i=0; i<selected_num div 6; i++) {
        var xt=random_range(452+100,1380-100); 
        var yt=random_range(578+100,1773-100);
        var fly = instance_create(x,y,obj_powerup_fly);
        fly.depth=-51;
        fly.setupfly=1;
        fly.direction=point_direction(x,y,xt,yt);
        fly.shift_time=choose(6,7,8)*2*(2/global.spd);;
        fly.speed=point_distance(x,y,xt,yt)/(fly.shift_time);
        fly.phase=2;
        fly.alarm[1]=fly.shift_time;
    }
}


/*if row=1 obj_controller_gameplay.alarm[column]=room_speed/alarmtime;
obj_controller_gameplay.item[column,row]=0;
with shadow instance_destroy();
instance_destroy();*/
visible=0;
shadow.visible=0;
obj_controller_gameplay.alarm[9]=6;
}

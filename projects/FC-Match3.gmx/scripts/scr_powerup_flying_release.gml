///scr_powerup_flying_release(id)

//мухи
var idd=argument0;

sc_target = 0;

//добавим все итемы в лист
var itm_list = ds_list_create();
for(var i=1; i<36; i++) {
    ds_list_add(itm_list,i);
}
ds_list_shuffle(itm_list);

//спауним нужное количество мух
for(var i=0; i<Main.powerup_level[3]+1; i++) {
    itnum = ds_list_find_value(itm_list,i);
    //мухи берут себе рандомные цели из листа
    with obj_item if (row-1)*5+column = other.itnum other.sc_target = id; 
    var fly = instance_create(mouse_x,mouse_y,obj_powerup_fly);
    fly.depth=-51-i;
    fly.target=sc_target;
    fly.direction=point_direction(mouse_x,mouse_y,sc_target.x,sc_target.y);
    fly.shift_time=choose(11,12,13,14,15)*(2/global.spd);
    fly.speed=point_distance(mouse_x,mouse_y,sc_target.x,sc_target.y)/(fly.shift_time*2);
    fly.alarm[1]=fly.shift_time;
    //у себя в криэйте они туда летят
}
ds_list_destroy(itm_list);

//если заюзать помощника нужно для квеста
for(var i=0;i<3;i++) {
    if Main.quest_type[i]=14 {
        //+1 и сохранить
        Main.quest_progress[i]+=1;
        scr_save();
    }   
}

Main.powerup_num[3]-=1;
scr_powerup_clean();
//все


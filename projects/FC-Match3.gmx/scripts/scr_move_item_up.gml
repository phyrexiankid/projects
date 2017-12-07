///scr_move_item_up(id)

var target=argument0;

with target {
    //передвигаем стрелки на последний?


    //y-=35;
    shadow.image_xscale = 0.9;
    shadow.image_yscale = 0.9;
    selected=1;
    last_selected=1; 
    selected_num = global.select_number;
    sprite_index = sp_gameplay_item_selected;
    //alarm[2]=3;
    //y_start=y;
    moveup_time=12/global.spd;
    alarm[7]=moveup_time;
    t = -sqrt(moveup_time);
    moveup_side = -1;
}


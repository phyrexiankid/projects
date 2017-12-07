///scr_move_item_down(id)

var target=argument0;

with target {
    //y+=30;
    shadow.image_xscale = 1;
    shadow.image_yscale = 1;
    selected=0;
    last_selected=0;
    //selected_num=0;
    sprite_index=sp_gameplay_items;
    
    y_curr=y;
    alarm[7]=0;
    alarm[8]=1;

}


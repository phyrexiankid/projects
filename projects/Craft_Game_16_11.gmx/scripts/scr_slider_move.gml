///scr_slider_move(shift)

var shift=argument0;
    
    var old_text_pose=text_pos;
    text_pos=clamp(text_pos-shift,bottom-text_height,top);
    y_prev=mouse_y;
    

    scr_surf_text();//draw new text
    
    //change buttons visibility for completed quests tab
    if index=2 {
    for(var i=0;i<ds_list_size(main.quest_buttons_list);i++) {
        with ds_list_find_value(main.quest_buttons_list,i) {
            y-=(old_text_pose-other.text_pos);
            if y<other.top or y>other.bottom visible=0;
            else visible=1;
        }
    } }

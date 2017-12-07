///scr_tab_activate(tab index, subtab index)

var act_tab=argument0;
var act_subtab=argument1;

with main.active_tab { //deactivate previous tab
    active=0;
    image_blend = main.color_dkgray;
    txt_color=c_white;
    for(var sb=0;sb<subtab_num;sb++) {
    
        with main.tab[index,sb+1] visible=0;
    }
}

with main.active_subtab { //deactivate previous subtab
    active=0;
    image_blend = main.color_dkblue;
    for(var i=0;i<ds_list_size(child_list);i++) {
        instance_deactivate_object(ds_list_find_value(child_list,i));
    }
}

with main.tab[act_tab,0] {// activate new tab
    active=1;
    image_blend = main.color_white;
    main.active_tab=id;
    active_subtab=act_subtab;
    txt_color=c_black;
    for(var sb=0;sb<subtab_num;sb++) {
        with main.tab[index,sb+1] visible=1;
    }
}

with main.tab[act_tab,act_subtab] {// activate new subtab
    active=1;
    image_blend = main.color_purple;
    main.active_subtab=id;
    for(var i=0;i<ds_list_size(child_list);i++) {
        instance_activate_object(ds_list_find_value(child_list,i));
    }
    
    if instance_exists(obj_text_scroll) obj_text_scroll.alarm[0]=1;
    with obj_flashing {
        if target=main.tab[act_tab,act_subtab] and target.visible=1 alarm[1]=room_speed;
    }
}




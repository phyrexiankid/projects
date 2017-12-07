///scr_show_bluring_menu(pause_type,pause_subtype)

    var pt=argument0;
    var ps=argument1;

    if !instance_exists(obj_blur) {//делаем новый блюр
        menu = instance_create(view_xview[0],0,obj_blur);
        menu.pause_type=pt;
        menu.pause_subtype=ps;
    } else {
        with obj_blur { //блюр уже есть, меняем меню
            with menu instance_destroy();
            menu=instance_create(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]/2,obj_pause_menu);
            menu.pause_type=pt;
            menu.pause_subtype=ps;
        }
    }

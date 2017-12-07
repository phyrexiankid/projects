///scr_bookmark_childs_disable(id)

with argument0 {
    for(var i=0; i<ds_list_size(child_list); i++) {
        //эти надо деактивировать обратно после того, как выключенный блюр
        //активировал все, попробуем записывать их в лист мейна и выключать обратно
        if ds_list_find_index(Main.must_deactivate,ds_list_find_value(child_list,i))=-1 ds_list_add(Main.must_deactivate,ds_list_find_value(child_list,i));
        
        //сперва вырубаем тайлы буде где есть
        switch bookmark_page {
        case 3:
           tile_layer_hide(Main.tile_depth_levels);//тайлы уровней
        break;
        }
        
        instance_deactivate_object(ds_list_find_value(child_list,i));        
    }
}

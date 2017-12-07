///scr_upgrades_resort()

if global.screen=2 {
var norm_map=ds_map_create();

//  !@!!!!!!!!!!!!!!!!!!!!! когда новая добавляется из магахзина, остальные деактивейтед

//сортируем на главные и простые
for(var i=0; i<ds_list_size(obj_shop.child_list[2]); i++) {
    with ds_list_find_value(obj_shop.child_list[2],i) {
        ds_map_add(norm_map,string(num),id);        
    }
}
ds_list_clear(obj_shop.child_list[2]);

//пихаем 
for(var i=1; i<120; i++) {
    var val=ds_map_find_value(norm_map,string(i));
    if !is_undefined(val) ds_list_add(obj_shop.child_list[2],val);
    //if i=51 i=99;
}

//сортируем 
for(var i=0; i<ds_list_size(obj_shop.child_list[2]); i++) {
    with ds_list_find_value(obj_shop.child_list[2],i) {
        y_shift = 270+270*i;
        y=obj_shop.y+y_shift;
        if y>obj_shop.ymax and y<obj_shop.ymin visible=1;
    }
}

ds_map_destroy(norm_map);
}

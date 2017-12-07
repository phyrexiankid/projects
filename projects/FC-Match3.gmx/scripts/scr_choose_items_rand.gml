///scr_choose_items_rand(id)

var target = argument0;

with target {
    var loaded=0;
    var types_list_sublist = ds_list_create();

    //добавляем в сублист все. потом можно делать какие нибудь спец. листы
    //или карты со списком какие объекты на уровне и какая миссия
    for(var i=0; i<Main.eat_available; i++) {
        ds_list_add(types_list_sublist,Main.e_t_a[i+1]);
    }
    ds_list_shuffle(types_list_sublist);
        
    do {      
        ds_list_add(types_list,ds_list_find_value(types_list_sublist,0));
        ds_list_delete(types_list_sublist,0);
        loaded+=1;   
    } until (loaded>=5)  
    
    ds_list_destroy(types_list_sublist);
    
}

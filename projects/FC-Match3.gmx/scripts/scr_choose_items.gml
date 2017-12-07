///scr_choose_items(id)

var target = argument0;

with target {
    
    var types_list_sublist = ds_list_create();

    //добавляем в сублист все. потом можно делать какие нибудь спец. листы
    //или карты со списком какие объекты на уровне и какая миссия
    for(var i=0; i<Main.eat_available; i++) {
        ds_list_add(types_list_sublist,Main.e_t_a[i+1]);
    }
    
    //нужен рандом, но завязанный на сиде, каковым послужит последняя цифра во времени уровня
    var strr = string(Main.balance_time[Main.level_played]);
    var shiftt = real(string_char_at(strr,string_length(strr))); 
    var loaded = 0;
    var point = shiftt;
    var size = ds_list_size(types_list_sublist);
    
    do {
        if point>size point=point mod size; //сдвигаемся если вышли за предел
        if point=size point-=1;
        
        ds_list_add(types_list,ds_list_find_value(types_list_sublist,point));
        ds_list_delete(types_list_sublist,point);
        
        point = point+shiftt-1;
        if point<0 point=0;
        size-=1;
        loaded+=1;   
    } until (loaded>=5)  
    
    ds_list_destroy(types_list_sublist);
    
}

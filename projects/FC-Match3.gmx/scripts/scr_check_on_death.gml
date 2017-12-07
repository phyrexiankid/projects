///scr_check_on_death()

    //сколько осталось предметов
    size=ds_list_size(mission_index_list);
    for(var i=0; i<size; i++) {
        type[i]=ds_list_find_value(mission_index_list,i);
        num[i]=ds_list_find_value(mission_num_list,i);
    }
    
    //селектнутые итемы сбрасываются по инфе
    if global.select_number >= 3 {
        with(obj_item) {        
            if selected=1 {
                for(var i=0; i<other.size; i++) {
                    if index=other.type[i] and other.num[i]>0 other.num[i]-=1;
                }
            }
        }
    }
                
    //если все оставшееся сейчас выбрано, ретюрн 1
    var missionss=0;
    for(var i=0; i<size; i++) {
        missionss+=num[i];
    }
    
    if missionss<=0 return 1;
    else return 0;

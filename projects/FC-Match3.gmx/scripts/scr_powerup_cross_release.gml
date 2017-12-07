///scr_powerup_cross_release(id)

//крест накрест


with obj_checker_main {
    if instance_position(x,y,obj_item) {
        with instance_nearest(x,y,obj_item) {
            obj_checker_main.column=column;
            obj_checker_main.row=row;
            //если заюзать помощника нужно для квеста
            for(var i=0;i<3;i++) {
                if Main.quest_type[i]=14 {
                    //+1 и сохранить
                    Main.quest_progress[i]+=1;
                    scr_save();
                }   
            }
        }
    } else {
        scr_powerup_clean();
        exit;
    }

    //какие подходят по списку
    for(check_i=0;check_i<ds_list_size(list_checker_x);check_i++) {
        with obj_item {
            if column = other.column+ds_list_find_value(other.list_checker_x,other.check_i)
            and row = other.row+ds_list_find_value(other.list_checker_y,other.check_i) {
                alarm[1]=(abs(column-other.column)+abs(row-other.row))*3+1; 
            }
        }    
    }
    
}    

Main.powerup_num[2] -=1;
scr_powerup_clean();
//все


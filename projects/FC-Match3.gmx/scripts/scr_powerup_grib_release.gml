///scr_powerup_grib_release(id)

//Гриб:
//Меняет 4 иконки рядом с той на который применили гриб (делает их такимиже)
//при улучшении гриба меняет 8, можено ещё раз улучшить так чтобы до 12


with obj_checker_main {
    if instance_position(x,y,obj_item) {
        with instance_nearest(x,y,obj_item) {
            //если заюзать помощника нужно для квеста
            for(var i=0;i<3;i++) {
                if Main.quest_type[i]=14 {
                    //+1 и сохранить
                    Main.quest_progress[i]+=1;
                    scr_save();
                }   
            }
            obj_checker_main.turn_to=index;
            obj_checker_main.column=column;
            obj_checker_main.row=row;
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
                turn_to=other.turn_to;
                timeline_index = tml_grib_bounce;
                timeline_position = 0;
                timeline_running = true;
                timeline_loop = 0;
                timeline_speed = 0.5*global.spd;   
            }
        }    
    }
    
}    

Main.powerup_num[1] -=1;
scr_powerup_clean(1);
//все


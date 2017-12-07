///scr_check_combo()

if global.select_number <3 { 
        
        with obj_item_white { //те, что висят на итеме с которого мы сошли
                    if real_target=0 {//он изначально тут и был...
                        
                    } else { // или не был
                        real_target.effect_destroy_row = real_angle;
                        target.effect_destroy_row = 0;
                        target = real_target;
                        real_target = 0;
                        real_angle  = 0;
                        y=target.y;
                        x=target.x;
                    }
                    
                with target {
                    effect_destroy_row=(other.image_angle/90)+1;
                }
                }

    }
    
                
    with(obj_item) {        
        if selected=1 {
        
            if global.select_number >= 3 { 
                
                //свинья думает, издавать ли радостные звуки
                scr_sound_pig_happy(global.select_number);
                
                //если на ломаемых итемах висят эффекты??? здесь проверять или в аларме ломания предметов?
                alarm[1]=(2*(selected_num-(0.1*selected_num)))*2/global.spd;
                if last_selected=1 {
                    if Main.freeze_moves>0 {
                        Main.freeze_moves-=1;
                        if Main.freeze_moves<=0 obj_powerup.alarm[5]=1;
                        else {
                            //обратный отсчет 3 сек в начале
                            var timer=instance_create(room_width/2,room_height/2,obj_countdown);
                            timer.progress = -1;//-1 вниз, 1 вверх
                            timer.count = Main.freeze_moves; //такой отсчет
                            timer.target_count = Main.freeze_moves; //к чему идем
                            timer.text = ''; //если не '', то этот текст показывается вместо нуля
                            timer.final_timer=2;
                            timer.with_pause=0;
                        }
                    }
                    scr_get_score();
                }
            } 
            scr_move_item_down(id);
        }
        selected=0;
        last_selected=0;
        //selected_num = 0;
    }
    
    //разлoмать все линии
    with obj_line instance_destroy();

    global.select=-1;
    global.select_number = 0;   

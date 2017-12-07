///scr_bookmark_childs_anable(id)

with argument0 {
    for(var i=0; i<ds_list_size(child_list); i++) {
        instance_activate_object(ds_list_find_value(child_list,i));
        //убираем их из листа обязательно выключенных
        ds_list_delete(Main.must_deactivate,ds_list_find_index(Main.must_deactivate,ds_list_find_value(child_list,i)));
        
        with ds_list_find_value(child_list,i) {
            if object_get_name(object_index)='obj_button' and index!=42 visible=1;
        }
    }  
      
        GoogleAnalytics_SendScreenView(Main.screen_name[bookmark_page]);
        
        with obj_button {
            if index=44 {
                instance_destroy();
            }
        }
        
        //чекаем если кому надо обновить таймера на этой вкладке
        if bookmark_page=2 scr_check_timers(1);         //апгрейдам
        else if bookmark_page=4 scr_check_timers(2);    //сундукам 
        else if bookmark_page=3 {
            tile_layer_show(Main.tile_depth_levels); //включаем тайлы уровней
            obj_tip_pig.alarm[1]=room_speed*1;
            obj_tip_pig.alarm[4]=room_speed*0.65;
        }
        else if bookmark_page=5 {                       //score, чекаем нужно ли создать там скоры
            //пока просто создаем заново кнопку глобального скора при открытии
            button1 = instance_create(room_width/2,y+1458+178,obj_button);//квесты 
            button1.index=44;
            button1.target=obj_controller_bookmark.mark5;
            button1.x_shift=(room_width/2)-obj_controller_bookmark.mark5.x;
            button1.y_shift=(1458+160*2)-obj_controller_bookmark.mark5.y;
            button1.depth=-1;
            ds_list_add(child_list,button1); //все это вносим в список детей
          with obj_bookmark_score_controller {
            if os_is_network_connected() = 0 { //вообще нет сети
                mode=2;
            } else {            
                var status=facebook_status();
                if status="AUTHORISED" mode=0;
                else mode=3;
            } 
            
            if mode=0 {
                if friends_scored=0 {scr_fb_check_score(); }
                else {
                    mode=1;
                    //получается уже все готово
                }
            } else if mode = 3 { //должна быть кнопка фб
                if fb_button=0 {
                    fb_button=instance_create(room_width/2,room_height/2,obj_button);//кнопка fb
                    fb_button.index=40;
                    fb_button.mode=1;
                    fb_button.target=id.target;
                    fb_button.y_shift=room_height/2;
                    ds_list_add(target.child_list,fb_button);
                }
                //invite_button.visible=0;
            }            
          }
        } else if bookmark_page=7 {//квесты
            with obj_bookmark_quest {
                alarm[0]=1;
            }
        } else if bookmark_page=10 {// подарки
        with obj_bookmark_gifts {
            //кнопка фейсбука
            if os_is_network_connected() = 0 { //вообще нет сети
                mode=3;
            } else {
                if Main.fb_gifts_checked=0 {
                  gifts_check=0;
                  scr_fb_check_gifts(2);
                }
            
                var status=facebook_status();
                if status="AUTHORISED" mode=1;
                else mode=3;
            } 
            
            if mode=1 {
                if friends_plaing=0 {mode=0; scr_fb_get_playing(); }
                else {
                  with obj_bookmark_gifts_friend {
                    visible=1; invite_button.visible=1; with invite_button scr_button_rebounce();
                  }
                  scr_show_bottom_plash();
                }
            } else if mode=2 {
                mode=1;
                /*else {
                with obj_bookmark_gifts_friend {
                    if playing=1 {visible=0;invite_button.visible=0}
                    else {visible=1;invite_button.visible=1; with invite_button scr_button_rebounce();}
                }}*/
            } else if mode = 3 { //должна быть кнопка фб
                if fb_button=0 {
                    fb_button=instance_create(room_width/2,room_height/2,obj_button);//кнопка fb
                    fb_button.index=40;
                    fb_button.mode=0;
                    fb_button.target=id.target;
                    fb_button.y_shift=room_height/2;
                    ds_list_add(target.child_list,fb_button);
                }
                
                //invite_button.visible=0;
            }

            
        }}
    
}

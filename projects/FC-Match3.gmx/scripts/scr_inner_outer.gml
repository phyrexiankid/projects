///scr_inner_outer(current,target)

var current=argument0;
var target=argument1;



//переход с внешней на внешнюю - все как обычно
if current=0 and target=0 {
    scr_sound(snd_pass2,1,0,1,1.5);
            //обращаемся к странице которую нужно открыть
            if bookmark_page = global.bookmark_current.bookmark_page {
                //та же страница и не надо листать
            } else if bookmark_page < global.bookmark_current.bookmark_page {
                //если нужная левее открытой сейчас-обе двигаем вправо
                //енейбл детей
                x = room_width/2-2048;
                stopped=0;
                move_side=1;
                shiftt=0;
                alarm[1]=close_time;   
                scr_bookmark_childs_anable(id)
                
                
                with global.bookmark_current {
                    stopped=0;
                    move_side=1;
                    shiftt=0;
                    alarm[1]=close_time;                   
                }
                obj_controller_bookmark.page_moves=1;
                global.bookmark_moved=id;
            } else if bookmark_page > global.bookmark_current.bookmark_page {
                //если нужная правее открытой сейчас-обе двигаем влево
                //енейбл детей
                x = room_width/2+2048;
                stopped=0;
                move_side=-1;
                shiftt=0;
                alarm[1]=close_time;   
                scr_bookmark_childs_anable(id)
                with global.bookmark_current {
                    stopped=0;
                    move_side=-1;
                    shiftt=0;
                    alarm[1]=close_time;                   
                }
                obj_controller_bookmark.page_moves=1;
                global.bookmark_moved=id;
            }
} else if current=0 and target=1 {
    scr_sound(snd_pass2,1,0,1.2,1.5);
    //c внешней на внутреннюю. нужно вырубить внешние
    //и засунуть закладки. идем только влево
            //обращаемся к странице которую нужно открыть
            if bookmark_page = global.bookmark_current.bookmark_page {
                //та же страница и не надо листать
                //походу с 0-1 такой ситуации не может быть, ну ладно
            } else {
                //идем только влево, енейбл детей, засовываем закладки 
                global.bookmark_level = 1;
                scr_bookmark_childs_anable(id)
                x = room_width/2+2048;
                stopped=0;
                move_side=-1;
                shiftt=0;
                alarm[1]=close_time+1;   
                with global.bookmark_current {
                    global.bookmark_last_outer = bookmark_page;
                    stopped=0;
                    move_side=-1;
                    shiftt=0;
                    alarm[1]=close_time+1;                   
                }
                obj_controller_bookmark.page_moves=1;
                global.bookmark_moved=id;
                
                with obj_controller_bookmark{
                stopped=0;
                move_side=1;
                shiftt=0;
                alarm[1]=close_time;  
                }
                
                
            } 
} else if current=1 and target=1 {
    scr_sound(snd_pass2,1,0,1,1.5);
    //c внутренней на внутреннюю. вроде ниче делать не надо
    // идем и вправо и влево (обычная кнопка или бэк)
            //обращаемся к странице которую нужно открыть
            if bookmark_page = global.bookmark_current.bookmark_page {
                //та же страница и не надо листать
            } else if bookmark_page < global.bookmark_current.bookmark_page {
                //если нужная левее открытой сейчас-обе двигаем вправо
                //енейбл детей
                x = room_width/2-2048;
                stopped=0;
                move_side=1;
                shiftt=0;
                alarm[1]=close_time+1;   
                scr_bookmark_childs_anable(id)
                with global.bookmark_current {
                    stopped=0;
                    move_side=1;
                    shiftt=0;
                    alarm[1]=close_time+1;                   
                }
                obj_controller_bookmark.page_moves=1;
                global.bookmark_moved=id;
            } else if bookmark_page > global.bookmark_current.bookmark_page {
                //если нужная правее открытой сейчас-обе двигаем влево
                //енейбл детей
                x = room_width/2+2048;
                stopped=0;
                move_side=-1;
                shiftt=0;
                alarm[1]=close_time+1;   
                scr_bookmark_childs_anable(id)
                with global.bookmark_current {
                    stopped=0;
                    move_side=-1;
                    shiftt=0;
                    alarm[1]=close_time+1;                   
                }
                obj_controller_bookmark.page_moves=1;
                global.bookmark_moved=id;
            }
} else if current=1 and target=0 {
    scr_sound(snd_pass2,1,0,0.8,1.5);
    //c внутренней на внешнюю. нужно врубить внешние
    //и высунуть закладки. идем только влево
    //обращаемся к странице которую нужно открыть
            if bookmark_page = global.bookmark_current.bookmark_page {
                //та же страница и не надо листать
                //походу с 1-0 такой ситуации не может быть, ну ладно
            } else {
                //идем только вправо, енейбл детей, высовываем закладки 
                global.bookmark_level = 0;
                x = room_width/2-2048;
                stopped=0;
                move_side=1;
                shiftt=0;
                alarm[1]=close_time+1;   
                scr_bookmark_childs_anable(id)
                with global.bookmark_current {
                    stopped=0;
                    move_side=1;
                    shiftt=0;
                    alarm[1]=close_time+1;                   
                }
                obj_controller_bookmark.page_moves=1;
                global.bookmark_moved=id;
                
                with obj_controller_bookmark{
                stopped=0;
                move_side=-1;
                shiftt=0;
                alarm[1]=close_time;  
                }
            }
            
}

global.bookmark = bookmark_page;

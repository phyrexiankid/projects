///scr_check_timers(what to check)

//чекаем каждый раз когда открывается должная вкладка. 
//сделать такие же 'tpe' и для всего остального что понадобится

var tpe=argument0; //1-АПГРЕЙДЫ 2-СУНДУКИ
var this_chest_time=0;
var diff=0;
var need_save=0;

if tpe=1 {//  АПГРЕЙДЫ

var dayt = date_current_datetime();

for(var up=1; up<24+1; up++) {
    log(string(up)+' upgr '+string(Main.upgrade[up,7]));
    if Main.upgrade[up,7]=0 {//все норм
    } else if Main.upgrade[up,7]=2 {//2- закончился отсчет, сделать стейт 
        with obj_bookmark_upgrade {
            if upgrade_index=up {
                if state!=2 {
                ts=0;
                state=2;
                scr_surf_upgrade(id);
                need_save=1;
                }
            }
        }
    } else if Main.upgrade[up,7]=3 {//3- макс прокачено
        with obj_bookmark_upgrade {
            if upgrade_index=up {
                
                state=3;
                //with button visible=0
            }
        }
    } else {//какое то кривое число, значит отсчет еще идет
        with obj_bookmark_upgrade {
            if upgrade_index=up {
                this_chest_time=upgrade_time*60;/*scr_upgrade_time(cost_1)*60*/;       

                //возвращает разницу в секундах между данным числом и текущим моментом
                //diff = dayt-Main.upgrade[up,7];
                diff=scr_time_diff(Main.upgrade[up,7]);
                
                ts=(this_chest_time-diff);
                if state!=1 {state=1; alarm[0]=1;}
                else {
                    //ts-=sec/60;
                    th=ts div 3600;
                    tm=(ts mod 3600) div 60;
                    if ts<=0 {
                        state=2;
                        alarm[0]=1;
                        button.alarm[0]=1;
                        Main.upgrade[upgrade_index,7]=2;
                        scr_save();
                    }

                    upgrade_open_cost=ceil(ts/3600*6);
                    if upgrade_open_cost_prev!=upgrade_open_cost {
                        button.alarm[0]=1;
                    }
                    upgrade_open_cost_prev=upgrade_open_cost;
                    
                    surface_set_target(text_surf);
                    draw_set_blend_mode_ext(bm_zero,bm_zero);
                    draw_rectangle(361-40,280,361-40+200,350,0);
                    draw_set_blend_mode(bm_normal);
                    draw_set_font(font_27);
                    draw_set_valign(fa_middle);
                    draw_set_halign(fa_left);
                    scr_draw_text_shadow(/*x+*/361-40+6,/*y+*/317,string(th)+mtf.l_other[0]+string(tm+1)+mtf.l_other[1],2,c_white,cc_shadow2);
                    surface_reset_target();
                }
            }
        }
        
       /* with obj_bookmark_upgrade {
            if upgrade_index=up {
                this_chest_time=scr_upgrade_time(cost_1)*60;       
            }
        }
        //возвращает разницу в секундах между данным числом и текущим моментом
        //diff=scr_time_diff(Main.upgrade[up,7]);
        diff = dayt-Main.upgrade[up,7];
        if this_chest_time-diff < this_chest_time { //если нужное время еще не прошло
            with obj_bookmark_upgrade {
                if upgrade_index=up {//переставляем время сундука на разницу
                    ts=(this_chest_time-diff);
                    state=1;
                    scr_surf_upgrade(id);
                }
            }
        } else { //если уже прошло
            with obj_bookmark_upgrade {//делаем сундук открытым
                if upgrade_index=up {
                    ts=0;
                    state=2;
                    scr_surf_upgrade(id);
                    Main.upgrade[up,7]=2;
                }
            }
            //ставим этот счетчик на ноль и сохраняем
            need_save=1;
        }*/
        
    }
}

} else if tpe=2 {//  СУНДУКИ

for(var ch=1; ch<9+1; ch++) {
    if Main.chest_time[ch]=0 {//все норм
        with obj_bookmark_chest {
            if chest_index=ch {
                if state!=0 {
                    ts=0;
                    state=0;
                }
            }
        }
    } else if Main.chest_time[ch]=2 {//2- закончился отсчет, сделать стейт 
        with obj_bookmark_chest {
            if chest_index=ch {
                if state!=2 {
                ts=0;
                state=2;
                }
            }
        }
    } else { //какое то кривое число, значит отсчет еще идет
        with obj_bookmark_chest {
            if chest_index=ch {
                chest_tier=Main.chest_type[chest_index];
                state=1;
                var hr = Main.chest_timing[chest_tier]*60*60;//сек
                this_chest_time=scr_chest_time(hr);
            }
        }
        //возвращает разницу в секундах между данным числом и текущим моментом
        diff=scr_time_diff(Main.chest_time[ch]);
        
        if diff < this_chest_time { //если нужное время еще не прошло
            with obj_bookmark_chest {//переставляем время сундука на разницу
                if chest_index=ch {
                    ts=(this_chest_time-diff);
                    state=1;
                }
            }
        } else { //если уже прошло
            with obj_bookmark_chest {//делаем сундук открытым
                if chest_index=ch {
                    ts=0;
                    state=2;
                    //записать его сундучье время и сохранить
                    Main.chest_time[chest_index]=2;
                    scr_save();
                }
            }
            //ставим этот счетчик на ноль и сохраняем
            need_save=1;
        }
    }
}

}


//если чето изменилось - сохраняем все
if need_save=1 scr_save();




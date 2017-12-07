///scr_time_diff(time to compare with)

    //возвращает разницу в секундах между данным числом и текущим моментом

    var time=argument0;
    
    //last played time
    var l_minut = date_get_minute(time);
    var l_hour = date_get_hour(time);
    var l_seconds = date_get_second(time);
    var l_year = date_get_year(time);
    var l_month = date_get_month(time);
    var l_day = date_get_day(time);

    //get difference in seconds "42845.649159"
    var sec_diff = date_second_span(date_current_datetime(),date_create_datetime(l_year, l_month, l_day, l_hour, l_minut, l_seconds));
    
    return sec_diff;
    
    /*if sec_diff <= global.time_to_wait {
       //user cannot play because he lost all his lives and shold wait timer to end
       timer_min = (global.time_to_wait-sec_diff) div 60;
       timer_sec = round((global.time_to_wait-sec_diff) mod 60);
    } else {
        global.live += sec_diff div global.time_to_wait;
        if global.live>5 global.live=5;
        time= date_current_datetime(); 
        timer_min = 15
        timer_sec = 0
       
        ini_open('save.ini')
            ini_write_real('game', 'lastTime',time);
            ini_write_real('game', 'lives', global.live)
        ini_close()
       
        if (instance_exists(oBtnGetLives)) {
            with(oBtnGetLives) {
                instance_create(x, y, oBtn_tryagain)
                instance_destroy()
            }
            with oBtnWait instance_destroy();
       }
    }*/

///scr_reset_push(open after mins)

var min_to_open = argument0;
var open_datatime=date_inc_minute(date_current_datetime(),min_to_open);


var last_maximum = Main.next_push; //смотрим есть ли там последнее время


if last_maximum!=0 {//если еще никакого пуша нет
    //делаем его
    if min_to_open < 10 exit; //не ставим если это первый и он меньше 10 мин
    scr_make_push(open_datatime);
    exit;
}

//если уже есть какое то время там, сравниваем его с этим
//если новое время больше
if date_compare_datetime(open_datatime,last_maximum)=open_datatime {
  //пишем его в сейв файл
  scr_make_push(open_datatime);
}//если новое меньше - все, ниче не делаем




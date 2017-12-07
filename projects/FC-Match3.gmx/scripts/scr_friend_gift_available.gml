///scr_friend_gift_available(friend_id)

var friendid = argument0;// какой id проверяем
var available = 0;

if !file_exists('datatime.ini') {
    return 1;
    exit;
} else {

ini_open('datatime.ini')
available = ini_read_real('fb_delay',friendid,0);            
ini_close();

log('AVAILABLE RESULT = '+string(available));
var result=1;
if is_undefined(available) result=1;//такого айди не сохранено, значит доступен 
if available>=40000 {          //есть какая то дата
available = date_inc_hour(available, Main.gift_delay)
if available > date_current_datetime() result=0;
}

return result;
}

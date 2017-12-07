///scr_get_score()


//obj_controller_gameplay.score_test +=   (global.select_number*global.select_number)*100;
obj_controller_gameplay.time_current += room_speed*(global.select_number*(Main.upgrade[15+index,0]*Main.upgrade[15,4]));//дают время
if obj_controller_gameplay.time_current>obj_controller_gameplay.time_start obj_controller_gameplay.time_curren=obj_controller_gameplay.time_start;
global.sscore+=global.select_number*global.select_number; 

global.obj+=global.select_number;
global.combs+=1;
//этот коэффициент можно множить в зависимости от прокачки времени, предметов

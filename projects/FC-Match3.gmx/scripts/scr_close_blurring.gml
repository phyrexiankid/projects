///scr_close_blurring(time_plus,transition_to)

var tp = argument0;
var tt = argument1;//перейти ли в какую то закладку или сделать кастомный эффект
                   //после исчезновения блюра

with obj_blur {
with menu instance_destroy();
phase = 2;}
if tp!=0 obj_blur.time_plus = tp;
if tt!=0 obj_blur.transition_to = tt;


//obj_pause_menu

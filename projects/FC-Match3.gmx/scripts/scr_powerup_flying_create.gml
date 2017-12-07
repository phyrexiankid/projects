///scr_powerup_flying_create(id,cross level)

var target=argument0;
var level=argument1;
var xshift = 200;
var yshift = 180;

//первый уровень - 5 штук, дальше с каждой по +4
var main=instance_create(mouse_x+xshift*0,mouse_y+yshift*0,obj_checker_main);
main.powerup=3;


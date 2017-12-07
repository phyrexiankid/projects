///scr_surf_button(string,active)

var str=string(argument0);
var act=argument1;

var clr=obj_controller.main_color_ore; 
if act clr=obj_controller.main_color;

surface_free(button_surf);
button_surf=surface_create(surf_x,surf_y);
var xx=surf_x/2;
var yy=surf_y/2;

var pg = xx-(td/2)-sprite_get_width(sp_main_button);  //передняя граница
var sg = xx-(td/2);                                   //средняя граница
var zg = xx+(td/2);                                   //задняя граница

surface_set_target(button_surf);/////////////////////////

draw_set_font(obj_controller.main_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(clr);

draw_sprite_ext(sp_main_button_segment,1,sg+48,yy,td-(48*2),1,0,clr,1); //средняя рамка
draw_sprite_ext(sp_main_button2,3,pg+48,yy,1, 1,0,clr,1);        //передняя рамка
draw_sprite_ext(sp_main_button2,5,zg-48,yy,1, 1,0,clr,1);        //задняя рамка
                     
draw_text(xx,yy,str); 

surface_reset_target();////////////////////////////////////

image_xscale=((zg+sprite_get_width(sp_main_button))-pg)/2-48;

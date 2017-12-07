//number,sprite,image,cost,upgrade to unlock in controller

var num = argument0;
var xmi=sprite_get_width(sp_main_plash)/2;
var ymi=sprite_get_height(sp_main_plash)/2;
var sph = sprite_get_height(sp_main_plash)/2;
var spw = sprite_get_width(sp_main_plash)/2;
var cost = argument3;
var value = real(argument4);
var name = argument5;
var color = obj_controller.ore_color;
var color2 = obj_controller.main_color_white;
var color3 = obj_controller.main_color_grey;

var press = 0;

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(obj_controller.main_font4);

if obj_shop.y>room_height/2-170+ymi-270*num 
{
draw_sprite_ext(sp_main_plash,0,obj_shop.x,obj_shop.y+270*num,1,1,0,noone,1);//plashka
if global.ore_count >= cost 
{
draw_sprite_ext(argument1,argument2,obj_shop.x-spw+sph,obj_shop.y+270*num,1.8,1.8,0,noone,1); //image
}
else draw_sprite_ext(argument1,argument2,obj_shop.x-spw+sph,obj_shop.y+270*num,1.8,1.8,0,c_dkgray,0.7); //image
draw_sprite_ext(sp_main_samorodok,obj_controller.ore_picture,obj_shop.x-spw+sph*2.5,obj_shop.y+270*num+50,0.8,0.8,0,obj_controller.ore_color,1);//самородок
if global.ore_count >= cost draw_set_colour(color2);
else draw_set_colour(color3);
draw_text(obj_shop.x-spw+sph*2+20,obj_shop.y+270*num-50,name);//название

draw_set_font(obj_controller.main_font3);
draw_text(obj_shop.x-spw+sph*3,obj_shop.y+270*num+61,cost);//цена
draw_set_colour(color3);
draw_set_font(obj_controller.main_font2);
draw_set_halign(fa_center);
draw_text(obj_shop.x+spw-sph/2,obj_shop.y+270*num,value);//колличество

//draw_text(obj_shop.x,obj_shop.y+270*num,num);



if device_mouse_check_button_pressed(0,mb_left)
{
if device_mouse_x(0)>obj_shop.x-xmi and device_mouse_x(0)<obj_shop.x+xmi and device_mouse_y(0)>obj_shop.y+270*num-ymi and device_mouse_y(0)<obj_shop.y+270*num+ymi
{
press = 1;
}
}


if device_mouse_check_button_released(0,mb_left) 
{
press = 0;
if device_mouse_x(0)>obj_shop.x-xmi and device_mouse_x(0)<obj_shop.x+xmi and device_mouse_y(0)>obj_shop.y+270*num-ymi and device_mouse_y(0)<obj_shop.y+270*num+ymi
{
    if global.ore_count >= cost
    {
    global.ore_count -= cost;
    return 1;
    }
}
}

}

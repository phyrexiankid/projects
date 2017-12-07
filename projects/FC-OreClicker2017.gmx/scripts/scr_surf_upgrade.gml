///scr_surf_upgrade()

surface_free(button_surf);
button_surf=surface_create(surf_x,surf_y);
var xx=surf_x/2;
var yy=surf_y/2;
surface_set_target(button_surf);/////////////////////////


if !main {
var vsph2 = xx-spw+sph;
var vsph3 = xx-spw+sph*2+64;
var vsph4 = xx-spw+sph*3+10;
var vsph5 = xx-spw+sph*2.5+10;

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(obj_controller.main_font4);

draw_sprite_ext(sp_main_plash,0,xx,yy,1,1,0,noone,1);//plashka
if just_clicked = 1 draw_sprite_ext(sp_main_plash,2,xx,yy,1,1,0,obj_controller.ore_color,0.25);//plashka


draw_set_font(obj_controller.main_font6);
if obj_shop.shop_upgrade[num,num2]  = 1 
{
if can_buy draw_sprite_ext(image,num2,vsph2,yy,1.8,1.8,0,noone,1); //image
else draw_sprite_ext(image,num2,vsph2,yy,1.8,1.8,0,c_dkgray,0.7); //image grey

if can_buy draw_sprite_ext(image,0,vsph3,yy-ymi/2+24,0.8,0.8,0,noone,1); //original small image
                       else draw_sprite_ext(image,0,vsph3,yy-ymi/2+24,0.8,0.8,0,c_dkgray,0.7); //original small image grey

if can_buy draw_set_colour(color2);
else draw_set_colour(color3);
draw_set_font(parent_font);
draw_text(vsph4,yy-70,parent_name);//название основного предмета
draw_set_font(name_font);
if can_buy draw_set_colour(color2);
else draw_set_colour(color3);
draw_text(vsph4,yy-15,string(name));//название апгрейда
draw_sprite_ext(sp_main_samorodok,obj_controller.ore_picture,vsph5,yy+66,0.8,0.8,0,obj_controller.ore_color,1);//самородок
if can_buy draw_set_colour(obj_controller.ore_color);
else draw_set_colour(color3);

draw_set_font(obj_controller.main_font3);
     draw_text(vsph4,yy+70,totalcost_s);//цена
     if step > 0 {
        draw_set_font(font5);
        draw_text(vsph4+step_width+5,yy+70-20,step);
     }  

}
else if obj_shop.shop_upgrade[num,num2] = 2 
{
draw_sprite_ext(image,num2,xx-spw+sph,yy,1.8,1.8,0,noone,1); //image
draw_sprite_ext(image,0,xx-spw+sph*2+64,yy-ymi/2+10,0.8,0.8,0,noone,1); //original small image
draw_set_colour(color2)
draw_set_font(parent_font);
draw_text(xx-spw+sph*3+10,yy-70,string(parent_name)+string(" ")+string(lat_num)+string(':'));//название основного предмета
draw_set_font(name_font);
draw_text(xx-spw+sph*3+10,yy,string(name));//название апгрейда
draw_set_colour(color4);
draw_text(xx-spw+sph*2+20+10,yy+70,"Owned!");//цена купленного
}
} else {//////////////////////////////////////////////////////////////////

var vsph2 = xx-spw+sph;
var vsph3 = xx-spw+sph*2+20;
var vsph4 = xx-spw+sph*3+10;
var vsph5 = xx-spw+sph*2.5+10;

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(obj_controller.main_font4);

draw_sprite_ext(sp_main_plash,1,xx,yy,1,1,0,noone,1);//plashka
if just_clicked = 1 draw_sprite_ext(sp_main_plash,2,xx,yy,1,1,0,obj_controller.ore_color,0.25);//plashka

draw_set_font(obj_controller.main_font6);

if can_buy draw_sprite_ext(image,num2,vsph2,yy,1.8,1.8,0,noone,1); //image
else       draw_sprite_ext(image,num2,vsph2,yy,1.8,1.8,0,c_dkgray,0.7); //image grey

draw_set_font(name_font);
if can_buy draw_set_colour(color4);
else draw_set_colour(color3);
draw_text(vsph3,yy-80,name);//название
if can_buy draw_set_colour(color2);
else draw_set_colour(color3);
draw_set_font(font4_2);
draw_text_ext(vsph3,yy-10,descript,36,700);//описание

draw_sprite_ext(sp_main_samorodok,obj_controller.ore_picture,vsph5,yy+75,0.8,0.8,0,obj_controller.ore_color,1);//самородок
if can_buy draw_set_colour(obj_controller.ore_color);
else draw_set_colour(color3);

draw_set_font(obj_controller.main_font3);
     draw_text(vsph4,yy+79,totalcost_s);//цена
     if step > 0 {
        draw_set_font(font5);
        draw_text(vsph4+step_width+5,yy+59,step);
     }  

}

surface_reset_target();////////////////////////////////////


///scr_surf_shop()

surface_free(button_surf);
button_surf=surface_create(surf_x,surf_y);
var xx=surf_x/2;
var yy=surf_y/2;

var vsph2 = xx-spw+sph*2+20;
var vsph3 = xx-spw+sph*2.5;
var vsph4 = xx-spw+sph*3;
var vsph5 = xx+spw-sph/2+10;

surface_set_target(button_surf);/////////////////////////

draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_sprite_ext(sp_main_plash,plash_img,xx,yy,1,1,0,noone,1);//plashka
if just_clicked = 1 draw_sprite_ext(sp_main_plash,2,xx,yy,1,1,0,obj_controller.ore_color,0.25);//plashka

if can_buy draw_sprite_ext(image,0,xx-spw+sph,yy,1.8,1.8,0,noone,1); //image
else draw_sprite_ext(image,0,xx-spw+sph,yy,1.8,1.8,0,c_dkgray,0.7); //image

draw_sprite_ext(sp_main_samorodok,ore_picture,vsph3,yy+11,0.8,0.8,0,ore_color,1);//самородок
if can_buy draw_set_colour(obj_controller.ore_color);
else draw_set_colour(color3);

draw_set_font(obj_controller.main_font3);
     draw_text(vsph4,yy+10,totalcost_s);//цена
     if step > 0 {
        draw_set_font(font5);
        draw_text(vsph4+step_width+5,yy+10-20,step);
     }  

if can_buy draw_set_colour(color2);
else draw_set_colour(color3);
draw_set_font(font28);
    draw_text(vsph2,yy+85,add_value);//описание
    if value_step > 0 {
        //draw_text(sph2+value_width+20,y+85,obj_controller.l_persec)
        draw_set_font(font5);
        draw_text(vsph2+value_width-49,yy+85-20,value_step);
    }


if color4 != noone draw_set_colour(color4); //желтый цвет названия если куплены все прокачки
draw_set_font(name_font);
draw_text(vsph2,yy-70,string(name));//название
if plash_img{//если желтая плашка, смена руды
draw_set_font(font4_2);
draw_set_colour(value_color);
draw_text(vsph2+15+name_width,yy-70,value_string);//название
}

draw_set_colour(color3);
draw_set_font(font2_1);
draw_set_halign(fa_right);

draw_text(vsph5,yy,value);//колличество


surface_reset_target();////////////////////////////////////


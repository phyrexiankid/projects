///scr_surf_upgrade(id)

var ttarget = argument0;

with ttarget {
//scr_upgrade_cost();//пересчитаем цены штоп писать нормальные
//upgrade_time=scr_upgrade_time(cost_1);

surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(1024,512);
ds_list_add(Main.surface_list,text_surf);

surface_set_target(text_surf);
draw_sprite(sp_bookmark_upgrade_iconback,0,133,212);// задник иконки
draw_sprite(sprite,image,133,212);// иконка

draw_sprite(sp_bookmark_upgrade_line,0,43,315);// полоска(начало)
draw_sprite_ext(sp_bookmark_upgrade_linemid,0,46,315,round(175/max_level*level),1,0,noone,1)// полоска(середина)
draw_sprite(sp_bookmark_upgrade_line,1,46+round(175/max_level*level),315)// полоска(конец)

switch state {
case 0: //не улучшено
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(font_30);
    if gem_cost=0 {//норм цена
    var cst=cost_1;
    var indx=4;
    } else {//цена в гемах
    var cst=cost_2;
    var indx=0;
    }
scr_draw_text_shadow(/*361*/612,317,string(cst),2,c_white,cc_shadow2);// текст - первая цена
draw_sprite_ext(sp_icons,indx,/*310*/561,317,1,1,0,noone,1);// монетки 

button.alarm[0]=1;
break;

case 1: // улучшается
draw_sprite_ext(sp_icons,5,310-14,317,1,1,0,noone,1);// песочные часы 

var this_chest_time=upgrade_time*60;
var diff=scr_time_diff(Main.upgrade[upgrade_index,7]);
ts=(this_chest_time-diff);

ts-=sec/60;
th=ts div 3600;
tm=(ts mod 3600) div 60;
if ts<=0 {
    state=2;
    alarm[0]=1;
    button.alarm[0]=1;
    Main.upgrade[upgrade_index,7]=2;
    scr_save();
    break;
}

upgrade_open_cost=ceil(ts/3600*6);
if upgrade_open_cost_prev!=upgrade_open_cost {
    button.alarm[0]=1;
}
upgrade_open_cost_prev=upgrade_open_cost;

draw_set_color(c_white);
draw_set_font(font_27);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
scr_draw_text_shadow(/*x+*/361-40+6,/*y+*/317,string(th)+mtf.l_other[0]+string(tm/*+1*/)+mtf.l_other[1],2,c_white,cc_shadow2);// время улучшения

button.alarm[0]=1;
break;

case 2: // улучшено
button.alarm[0]=1;
break;

case 3: // max улучшено
with button visible=0;
break;
}

draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_font(font_34);
scr_draw_text_shadow(139,93,mtf.l_other[3]+string(level),3,cc_yellow,cc_shadow3);// текст - уровень 
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
scr_draw_text_shadow(277,93,title,3,cc_yellow,cc_shadow1);// текст - название 
draw_set_font(font_27);
draw_set_valign(fa_top);
scr_draw_text_shadow(277,117,description,2,c_white,cc_shadow2);// текст - описание 
surface_reset_target();



}

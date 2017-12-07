///scr_surf_buyable_starterpack(id)

var targett = argument0;

with targett {
surface_free(buyable_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,buyable_surf));
var xx=1024;
var yy=512;
buyable_surf = surface_create(xx,yy);
ds_list_add(Main.surface_list,buyable_surf);
surface_set_target(buyable_surf);
 
var ccc_shadow=make_color_rgb(80,6,35);
var ccc_1=     make_color_rgb(208,250,25);
var ccc_2=     make_color_rgb(255,210,5);
var ccc_3=     make_color_rgb(255,251,3);
// задник стартера
draw_sprite(sp_bookmark_starterpack_plash,0,xx/2,yy/2);
//надпись стартер пак
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font_47);
scr_draw_text_shadow(xx/2,88,mtf.l_other[8],3,c_white,ccc_shadow);// название покупки
// элементы
draw_sprite(sp_bookmark_starterpack_elems,0,xx/2,307+30);
// количество ништяков
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font_45);
scr_draw_text_shadow(xx/2-315,262+25,Main.starter_pack[1],3,ccc_1,c_black);//камни
scr_draw_text_shadow(xx/2,    262+25,Main.starter_pack[2],3,ccc_2,c_black);//ключи
scr_draw_text_shadow(xx/2+315,262+25,Main.starter_pack[3],3,ccc_3,c_black);//злато
// цена, сначала смотрим как наша валюта рисуется (как в покупках обычных)
draw_set_font(font_47);
var pre_curr='';
var post_curr='';
if Main.inap_currency_name_pre!= '' pre_curr=string(Main.inap_currency_name_pre)+' ';
post_curr=string(Main.inap_currency_name);
var cst=string(pre_curr)+string(cost)+string(post_curr);
scr_draw_text_shadow(xx/2,384,cst,3,c_white,c_black);
// сколько осталось времени стартера
draw_set_font(font_30);

if date_inc_hour(Main.starter_pack[5], Main.starter_pack[4])>date_current_datetime() {//время еще не прошло
    var fnsh=date_inc_hour(Main.starter_pack[5], Main.starter_pack[4]);//когда кончится время
    var nnow=date_current_datetime();                                  //текущее время
    var time_string=ceil(date_hour_span(fnsh, nnow));
    scr_draw_text_shadow(xx/2,460,string(mtf.l_other[9])+string(time_string)+string(mtf.l_other[0]),0,ccc_shadow,ccc_shadow);
} else {//время прошло, раздолбать стартер
    surface_reset_target();
    surface_free(buyable_surf);
    ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,buyable_surf));
    ds_list_delete(target.child_list,ds_list_find_index(target.child_list,id));
    instance_destroy();   
    exit;
}


surface_reset_target();
}

/*cc_white cc_green cc_shadow*/

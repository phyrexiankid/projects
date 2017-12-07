///scr_surf_buyable(id)

var target = argument0;

with target {
surface_free(buyable_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,buyable_surf));
buyable_surf = surface_create(512,1024);
ds_list_add(Main.surface_list,buyable_surf);
surface_set_target(buyable_surf);
 

//картинки
draw_sprite(sp_shop_itemback,0,0,0);// задник покупки
draw_sprite_ext(sp_shop_light,0,330/2-6,622/2+35,1.2,1.2,random(360),noone,0.9);// свет
//тут свечение - 143,341
draw_sprite(sprite,image,158+8,374+12);// иконка покупки
var str=string('     ')+string(amount);
var pre_curr='';
var post_curr='';
if Main.inap_currency_name_pre!= '' pre_curr=string(Main.inap_currency_name_pre)+' ';
//if Main.inap_currency_name!='' post_curr=' '+string(Main.inap_currency_name);
post_curr=string(Main.inap_currency_name);
var cst=string(pre_curr)+string(cost)+string(post_curr);
var leng = string_width(str)/2;
draw_sprite_ext(sp_hud_icon,4,165-leng+28,187+14,0.9,0.9,0,noone,1); //камень в количестве

//текст
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font_30);
scr_draw_text_shadow(165,81,name,3,cc_green,cc_shadow);// название покупки
scr_draw_text_shadow(165,187+14,str,3,cc_white,cc_shadow);// количество
scr_draw_text_shadow(165,550,cst,3,cc_white,cc_shadow);// цена

surface_reset_target();
}

/*cc_white cc_green cc_shadow*/

///scr_surf_bookark_openchest_button(id)

with argument0 {
var numm = 3;
surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);

surface_set_target(text_surf);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font);
scr_draw_text_shadow(sur_w/2,sur_h/2-44,line,shift,color,shadow);
switch mode {
case 1: //открыть за камни
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(font_30);
var leng = (string_width(string(numm))+56+8)/2;
draw_sprite_ext(sp_icons,0,sur_w/2+leng-27,sur_h/2+27,0.9,0.9,0,noone,1);
scr_draw_text_shadow(sur_w/2-leng,sur_h/2,numm,shift,color,shadow);
break;
case 2: //открыть за золотые ключи
draw_sprite_ext(sp_hud_icon,3,sur_w/2,sur_h/2+24,0.9,0.9,0,noone,1); 
break;
case 3: //открыть за сереберянные ключи
draw_sprite_ext(sp_hud_icon,2,sur_w/2,sur_h/2+24,0.9,0.9,0,noone,1); 
break;
}

surface_reset_target();
}



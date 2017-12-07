///scr_surf_button_watchad(id)

var target = argument0;

with target {
var numm = 3;
surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);


surface_set_target(text_surf);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font);
var leng = string_width(line)/2;
draw_sprite_ext(sp_icon_video,0,sur_w/2-leng-27,sur_h/2,0.9,0.9,0,noone,1);
scr_draw_text_shadow(sur_w/2,sur_h/2,line,shift,color,shadow);

surface_reset_target();
}

///scr_surf_button_time_free(id)

var target = argument0;

with target {
surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);
surface_set_target(text_surf);


draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(font);
draw_sprite(sp_icons_lose,2,sur_w/2-100+20,sur_h/2);
scr_draw_text_shadow(sur_w/2-52+20,sur_h/2,line,shift,color,shadow);
surface_reset_target();
}

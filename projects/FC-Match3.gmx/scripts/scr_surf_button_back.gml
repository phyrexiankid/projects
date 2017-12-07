///scr_surf_button_back(id)

var target = argument0;

with target {
surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);


surface_set_target(text_surf);
draw_sprite(sp_hud_icon,5,69,sur_h/2);
draw_set_font(font_42)
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
scr_draw_text_shadow(69+34,sur_h/2,line,3,color,shadow);
surface_reset_target();
}

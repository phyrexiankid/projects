///scr_surf_title(id)

var target = argument0;

with target {
surface_free(title_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,title_surf));
title_surf = surface_create(sursize_x,sursize_y);
ds_list_add(Main.surface_list,title_surf);
surface_set_target(title_surf);

draw_set_font(font_42)
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
scr_draw_text_shadow(sursize_x/2,sursize_y/2,title,3,cc_white,cc_shadow);

surface_reset_target();
}

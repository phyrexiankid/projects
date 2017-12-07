///scr_surf_button(id)

var target = argument0;

with target {
surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);

surface_set_target(text_surf);

if object_get_name(object_index)='obj_bookmark_level' {
draw_sprite(sprite_index,image_index,sur_w/2,sur_h/2+7);
draw_sprite(sprite_index,image_index,sur_w/2,sur_h/2+7);
draw_sprite(sprite_index,image_index,sur_w/2,sur_h/2+7);
}

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font);
scr_draw_text_shadow(sur_w/2,sur_h/2,line,shift,color,shadow);
surface_reset_target();
}

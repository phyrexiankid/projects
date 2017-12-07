///scr_surf_bookark_button(id,sprite,image)

var targ   = argument0;
var sprite = argument1;
var image  = argument2;


with targ {

surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);
surface_set_target(text_surf);


var half=512;
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(font_30);
scr_draw_text_shadow(sur_w/2-half+163,sur_h/2,line,shift,color,shadow);
draw_sprite(sprite,image,sur_w/2-half+76,sur_h/2); //предмет в начале, даваемый в аргументах

surface_reset_target();
}



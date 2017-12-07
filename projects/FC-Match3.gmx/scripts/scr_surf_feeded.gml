///scr_surf_feeded(id)

var target = argument0;

with target {
randomize();
surface_free(menu_surf);
//ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,menu_surf));
menu_surf = surface_create(sursize,sursize);
ds_list_add(Main.surface_list,menu_surf);

surface_set_target(menu_surf);
draw_set_font(font_45)
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
var collr;
if pause_type=15 {mtf.l_popup[pause_type,0]=mtf.l_win[round(random_range(1,array_length_1d(mtf.l_win)-1))]; collr=cc_yellow;}
else {mtf.l_popup[pause_type,0]=mtf.l_loose[round(random_range(1,array_length_1d(mtf.l_loose)-1))]; collr=cc_red;}
scr_draw_text_shadow(sursize/2,sursize/2,mtf.l_popup[pause_type,0],3,collr,cc_shadow1);//15
surface_reset_target();


}

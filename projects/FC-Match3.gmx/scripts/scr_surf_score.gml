///scr_surf_score(id)

var target = argument0;

with target {
surface_free(score_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,score_surf));
score_surf = surface_create(1024,256);
ds_list_add(Main.surface_list,score_surf);
surface_set_target(score_surf);
var xx=1024/2;
var yy=256/2;

draw_sprite(sp_bookmark_score_plash,is_player,xx,yy);
draw_sprite(sp_quest_dots,1,800,yy);
//текст
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font_30);
draw_set_halign(fa_left);
scr_draw_text_shadow(54,yy,friend_name,3,c_white,cc_shadow);//имя
draw_set_halign(fa_center);
scr_draw_text_shadow(1024-112,yy,friend_score,3,c_white,cc_shadow);//счет

//xx-186 - точки

surface_reset_target();
}

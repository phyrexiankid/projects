///scr_surf_hud(id)

var target = argument0;

with target {
surface_free(hud_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,hud_surf));
hud_surf = surface_create(1024,256);
ds_list_add(Main.surface_list,hud_surf);
surface_set_target(hud_surf);

//монеты
draw_sprite(sp_hud_back1,0,12,60);
draw_sprite_ext(sp_hud_back2,0,12+40,60,(323-40)-(12+40),1,0,noone,1);
draw_sprite(sp_hud_back1,1,323-40,60);
draw_sprite(sp_hud_icon,1,41,60);
//серебрянные ключи
draw_sprite(sp_hud_back1,0,337,60);
draw_sprite_ext(sp_hud_back2,0,337+40,60,(525-40)-(337+40),1,0,noone,1);
draw_sprite(sp_hud_back1,1,525-40,60);
draw_sprite(sp_hud_icon,2,374,60);
//золотые ключи
draw_sprite(sp_hud_back1,0,541,60);
draw_sprite_ext(sp_hud_back2,0,541+40,60,(744-40)-(541+40),1,0,noone,1);
draw_sprite(sp_hud_back1,1,744-40,60);
draw_sprite(sp_hud_icon,3,582,60);
//камни
draw_sprite(sp_hud_back1,0,773,60);
draw_sprite_ext(sp_hud_back2,0,773+40,60,(1024-40)-(773+40),1,0,noone,1);
draw_sprite(sp_hud_back1,1,1024-40,60);
draw_sprite(sp_hud_icon,4,794,60);
if room!=room_gameplay draw_sprite(sp_hud_icon,0,988,60);
surface_reset_target();
}

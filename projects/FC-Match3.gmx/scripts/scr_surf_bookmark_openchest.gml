///scr_surf_bookmark_openchest(id)

var target = argument0;

with target {    
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    
    draw_sprite_part(sp_popup,0,0,490,990,300,sursize/2-495,sursize/2+266-300);
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-120);
    draw_sprite(sp_chest_big,Main.chest_focused_tier-1,sursize/2,sursize/2-120-17);
    
    surface_reset_target();
}

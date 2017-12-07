///scr_surf_menu_1(id)

var target = argument0;

with target {
    var ysh=100;
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    draw_sprite_part(sp_pause_body,0,0,284,990,506,sursize/2-495,sursize/2+266-356);
    //draw_sprite_ext(sp_pause_body,1,sursize/2,sursize/2-ysh-201+395/*401+395*/,image_xscale,image_yscale,0,noone,1);
    draw_sprite_ext(sp_pause_head,0,sursize/2,sursize/2-ysh,image_xscale,image_yscale,0,noone,1);
    draw_set_font(font_47);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    scr_draw_text_shadow(sursize/2,sursize/2-ysh,mtf.l_popup[0,0],3,c_white,make_color_rgb(74,11,12))
    //номер уровня
    draw_set_font(font_45)
    draw_set_valign(fa_top);
    draw_set_halign(fa_center);
    scr_draw_text_shadow(sursize/2,20,mtf.l_other[4]+string(Main.level_played),3,c_white,c_black);//15
    surface_reset_target();
}





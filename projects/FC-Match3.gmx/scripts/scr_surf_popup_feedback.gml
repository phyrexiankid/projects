///scr_surf_popup_feedback(id)

var target = argument0;

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    //(sp_popup,0,0,790-height,990,height,sursize/2-495,sursize/2-sp_pause_head.height+93) //высота спрайта 790           
    draw_sprite_part(sp_popup,0,0,146,990,644,sursize/2-495,sursize/2-332+93);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-332);
    draw_sprite(sp_popup_character_plash,1,sursize/2,sursize/2+45); //персонаж
    var str1 = mtf.l_popup[pause_type,0];//9
    var str2 = mtf.l_popup[pause_type,1];
    var str3 = mtf.l_popup[pause_type,2];
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(font_34);
    scr_draw_text_shadow(sursize/2,sursize/2-332,str1,3,c_white,cc_shadow2);
    draw_set_color(c_white);
    draw_set_font(font_34);
    scr_draw_text_shadow(sursize/2,sursize/2-160,str2,3,c_white,cc_shadow2);
    draw_set_font(font_30);
    scr_draw_text_shadow(sursize/2+202,sursize/2+41,str3,2,c_white,cc_shadow2);

    surface_reset_target();
}

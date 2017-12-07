///scr_surf_popup_gift(id)

var target = argument0;

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    //(sp_popup,0,0,790-height,990,height,sursize/2-495,sursize/2-sp_pause_head.height+93) //высота спрайта 790           
    draw_sprite_part(sp_popup,1,0,80,990,710,sursize/2-495,sursize/2-363+93);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-363);
    draw_set_font(font_42);
    var str1 = mtf.l_popup[pause_type,0]+string(10)+'   ';//12
    var lng = string_width(string(str1))/2;
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_sprite_ext(sp_hud_icon,3,sursize/2+lng,sursize/2-363,0.8,0.8,0,noone,1);//кристал
    scr_draw_text_shadow(sursize/2,sursize/2-363,str1,3,c_white,cc_shadow2);

    surface_reset_target();
}

///scr_surf_bookmark_nogems(id)

var target = argument0;
tttype = argument1;//0-гемы 1-золото 2-сократить сундук за гемы 3-сократить апгрейд за гемы

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    
    draw_sprite_part(sp_popup,0,0,284,990,506,sursize/2-495,sursize/2+266-456);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-143);
    draw_set_font(font_42);
    if other.tttype=0 {var str  = mtf.l_popup[pause_type,0]; var str2 = mtf.l_popup[pause_type,3];var icc=4;}
    else if other.tttype=1 {var str  = mtf.l_popup[pause_type,0]; var str2 = mtf.l_popup[pause_type,4];var icc=1;}
    else if other.tttype=2 {var str  = mtf.l_popup[pause_type,1]; var str2 = mtf.l_popup[pause_type,5];var icc=4;}
    else if other.tttype=3 {var str  = mtf.l_popup[pause_type,2]; var str2 = mtf.l_popup[pause_type,6];var icc=4;}
    var lng1 = string_width(str);
    draw_sprite(sp_hud_icon,icc,sursize/2+lng1/2-28,sursize/2-143);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    //draw_set_color(c_white);
    scr_draw_text_shadow(sursize/2,sursize/2-143,str,3,c_white,cc_shadow2);
    draw_set_font(font_30);
    draw_set_valign(fa_top);
    scr_draw_text_shadow(sursize/2,sursize/2-6,str2,2,c_white,cc_shadow2);
    
    surface_reset_target();
}

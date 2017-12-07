///scr_surf_popup_thanks(id,title,description)

var targett = argument0;
var str     = argument1;//title
var str2    = argument2;//description

with targett {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    
    draw_sprite_part(sp_popup,0,0,284,990,506,sursize/2-495,sursize/2+266-456);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-143);
    draw_set_font(font_42);
    //var str  = mtf.l_popup[pause_type,0];//16
    //var str2 = mtf.l_popup[pause_type,1];
    var lng1 = string_width(str);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    //draw_set_color(c_white);
    scr_draw_text_shadow(sursize/2,sursize/2-143,str,3,c_white,cc_shadow2);
    draw_set_font(font_30);
    draw_set_valign(fa_top);
    scr_draw_text_shadow(sursize/2,sursize/2+30,str2,2,c_white,cc_shadow2);

    
    surface_reset_target();
}

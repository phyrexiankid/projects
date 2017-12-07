///scr_surf_popup_sale(id)

var target = argument0;

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    //(sp_popup,0,0,790-height,990,height,sursize/2-495,sursize/2-sp_pause_head.height+93) //высота спрайта 790           
    draw_sprite_part(sp_popup,2,0,33,990,757,sursize/2-495,sursize/2-377+93);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-377);
    draw_sprite(sp_popup_timer,0,sursize/2,sursize/2-189);
    draw_sprite(sp_popup_timer,1,sursize/2-87,sursize/2-189);
    var str1 = mtf.l_popup[pause_type,0];//10
    var str2 = ' 1200';
    var str3 = '4.99';
    var color_oldcost=make_color_rgb(251,192,72);
    var color_shadow1=make_color_rgb(28,36,61);
    var color_shadow2=make_color_rgb(42,51,81);
    draw_set_font(font_45);
    var sdv = string_width(string(str2))/2;
    draw_sprite_ext(sp_menu_message_symbol,0,sursize/2-sdv-15,sursize/2+28,1.4,1.4,0,noone,1);//камень
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    scr_draw_text_shadow(sursize/2,sursize/2+28,str2,4,c_white,color_shadow1);//сколько камней
    draw_set_font(font_42);
    scr_draw_text_shadow(sursize/2,sursize/2-377,str1,3,c_white,cc_shadow2);//заголовок
    scr_draw_text_shadow(sursize/2+368,sursize/2+28,str3,2,color_oldcost,color_shadow2);//старая цена
    draw_set_color(color_shadow2);
    draw_roundrect(sursize/2+368-100,sursize/2+28-3,sursize/2+368+100,sursize/2+28+3,0);
    surface_reset_target();
}

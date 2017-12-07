///scr_surf_popup_gifts(id,giftback)

var target = argument0;
var giftback=argument1;
//var type = argument2; ????
//var amount = argument3;
//0 - тебе прислали подарки первый раз. можно отправить взад за бесплатно и без таймеров
//1 - тебе прислали подарки в ответ на твои подарки

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    //(sp_popup,0,0,790-height,990,height,sursize/2-495,sursize/2-sp_pause_head.height+93) //высота спрайта 790           
    draw_sprite_part(sp_popup,0,0,150,990,640,sursize/2-495,sursize/2-332+93);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-332);
    draw_sprite(sp_popup_character_plash,3,sursize/2,sursize/2+74-50); //персонаж
    if giftback=0 {
        var str1 = mtf.l_popup[pause_type,0];//14
        var str2 = mtf.l_popup[pause_type,1];
    } else {
        var str1 = mtf.l_popup[pause_type,2];
        var str2 = mtf.l_popup[pause_type,3];
    }
    
    var amount = ds_list_size(Main.fb_request_list)*1;
    
    draw_sprite_ext(sp_hud_icon,3,sursize/2+164,sursize/2+22-10,1,1,0,noone,1);//кристал
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(font_42);
    scr_draw_text_shadow(sursize/2,sursize/2-332,str1,3,c_white,cc_shadow2);//заголовок
    draw_set_font(font_30);
    draw_text(sursize/2,sursize/2-158,str2);//лид
    draw_set_font(font_42);
    scr_draw_text_shadow(sursize/2+164,sursize/2+112-10,amount,3,c_white,cc_shadow2);//количество подарков (оно же одно?)

    surface_reset_target();
}

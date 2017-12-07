///scr_surf_popup_daily(id)

var target = argument0;

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    //(sp_popup,0,0,790-height,990,height,sursize/2-495,sursize/2-sp_pause_head.height+93) //высота спрайта 790           
    draw_sprite_part(sp_popup,0,0,0,990,790,sursize/2-495,sursize/2-438+93);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-428);
    draw_sprite(sp_popup_character_plash,1,sursize/2,sursize/2-46); //персонаж
    var str1 = mtf.l_popup[pause_type,0];//11
    var str2 = mtf.l_popup[pause_type,1];
    var str3 = mtf.l_popup[pause_type,2];
    draw_sprite(sp_menu_message_symbol,0,sursize/2+70+15,sursize/2-32+4);//камень
    var bn=Main.daily_day;
    var zdv = 21;
    var vdv = 20;
    //сектора
    draw_sprite(sp_bonus_sectors,0+3*(bn>=1),sursize/2-347-zdv,sursize/2+184-vdv);
    draw_sprite(sp_bonus_sectors,1+3*(bn>=2),sursize/2-174-zdv,sursize/2+184-vdv);
    draw_sprite(sp_bonus_sectors,1+3*(bn>=3),sursize/2+16-zdv, sursize/2+184-vdv);
    draw_sprite(sp_bonus_sectors,1+3*(bn>=4),sursize/2+206-zdv,sursize/2+184-vdv);
    draw_sprite(sp_bonus_sectors,2+3*(bn>=5),sursize/2+382-zdv,sursize/2+184-vdv);
    //камни
    draw_sprite(sp_bonus_symbols,1,sursize/2-388-zdv,sursize/2+162-vdv);
    draw_sprite(sp_bonus_symbols,2,sursize/2-165-zdv,sursize/2+162-vdv);
    draw_sprite(sp_bonus_symbols,3,sursize/2+32-zdv, sursize/2+162-vdv);
    draw_sprite(sp_bonus_symbols,4,sursize/2+222-zdv,sursize/2+162-vdv);
    draw_sprite(sp_bonus_symbols,5,sursize/2+408-zdv,sursize/2+162-vdv); 
    //галки
    if bn>=1 draw_sprite(sp_bonus_symbols,0,sursize/2-310-zdv,sursize/2+196-vdv);
    if bn>=2 draw_sprite(sp_bonus_symbols,0,sursize/2-108-zdv,sursize/2+196-vdv);
    if bn>=3 draw_sprite(sp_bonus_symbols,0,sursize/2+94-zdv, sursize/2+196-vdv);
    if bn>=4 draw_sprite(sp_bonus_symbols,0,sursize/2+280-zdv,sursize/2+196-vdv);
    if bn>=5 draw_sprite(sp_bonus_symbols,0,sursize/2+452-zdv,sursize/2+196-vdv);   
    //текст
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(font_34);
    scr_draw_text_shadow(sursize/2-388-zdv,sursize/2+232-vdv,Main.daily_gift[1], 2,c_white,cc_shadow2);
    scr_draw_text_shadow(sursize/2-165-zdv,sursize/2+232-vdv,Main.daily_gift[2], 2,c_white,cc_shadow2);
    scr_draw_text_shadow(sursize/2+32-zdv, sursize/2+232-vdv,Main.daily_gift[3],2,c_white,cc_shadow2);
    scr_draw_text_shadow(sursize/2+222-zdv,sursize/2+232-vdv,Main.daily_gift[4],2,c_white,cc_shadow2);
    scr_draw_text_shadow(sursize/2+412-zdv,sursize/2+232-vdv,Main.daily_gift[5],2,c_white,cc_shadow2);

    draw_set_font(font_42);
    scr_draw_text_shadow(sursize/2,sursize/2-428,str1,3,c_white,cc_shadow2);//заголовок
    draw_set_font(font_47);//самый большой фрифт
    scr_draw_text_shadow(sursize/2+218-15,sursize/2-32+4,Main.daily_gift[Main.daily_day],4,c_white,cc_shadow2);//сколько бонус
    draw_set_font(font_34);
    scr_draw_text_shadow(sursize/2+172,sursize/2-108-vdv,str2,2,c_white,cc_shadow2);//сегодняшний бонус
    draw_set_font(font_27);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_right);
    scr_draw_text_shadow(sursize/2+472,sursize/2-267,str3,2,c_white,cc_shadow2);//заходите завтра
    
    /*draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(font_34);
    scr_draw_text_shadow(sursize/2,sursize/2-332,str1,3,c_white,cc_shadow2);
    draw_set_color(c_white);
    draw_set_font(font_34);
    scr_draw_text_shadow(sursize/2,sursize/2-160,str2,3,c_white,cc_shadow2);
    draw_set_font(font_30);
    scr_draw_text_shadow(sursize/2+202,sursize/2+41,str3,2,c_white,cc_shadow2);*/

    surface_reset_target();
}

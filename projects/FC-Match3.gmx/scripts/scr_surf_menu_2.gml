///scr_surf_menu_2(id)

var target = argument0;

with target {
    var ysh=448;
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    draw_sprite_ext(sp_pause_body,0,sursize/2,sursize/2-ysh+388+60,image_xscale,image_yscale,0,noone,1);
    draw_sprite_ext(sp_pause_body_details,0,sursize/2,sursize/2-ysh+388,image_xscale,image_yscale,0,noone,1);
    draw_sprite_ext(sp_pause_head,0,sursize/2,sursize/2-ysh,image_xscale,image_yscale,0,noone,1);
    draw_set_font(font_47);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    scr_draw_text_shadow(sursize/2,sursize/2-ysh,"Вы прошли 1 ур.",3,c_white,make_color_rgb(74,11,12));
    draw_set_font(font_30);
    draw_set_halign(fa_left);
    draw_set_color(make_color_rgb(254,196,101));
    //наименование строки че получил
    var lst_strt=186;
    var lst_shft=122;
    draw_text(sursize/2-394,sursize/2-ysh+388-lst_strt+lst_shft*0,"Камней");
    draw_text(sursize/2-394,sursize/2-ysh+388-lst_strt+lst_shft*1,"Ключей");
    draw_text(sursize/2-394,sursize/2-ysh+388-lst_strt+lst_shft*2,"Очков");
    draw_text(sursize/2-394,sursize/2-ysh+388-lst_strt+lst_shft*3,"Подарков");
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    //количество полученных вещей - здесь потом цифры из контроллера
    draw_text(sursize/2+296,sursize/2-ysh+388-lst_strt+lst_shft*0,74); 
    draw_text(sursize/2+296,sursize/2-ysh+388-lst_strt+lst_shft*1,8);
    draw_text(sursize/2+296,sursize/2-ysh+388-lst_strt+lst_shft*2,global.sscore);
    draw_text(sursize/2+296,sursize/2-ysh+388-lst_strt+lst_shft*3,54);
    //иконки штук
    draw_sprite(sp_icons,0,sursize/2+372,sursize/2-ysh+388-lst_strt+lst_shft*0); 
    draw_sprite(sp_icons,1,sursize/2+372,sursize/2-ysh+388-lst_strt+lst_shft*1);
    draw_sprite(sp_icons,2,sursize/2+372,sursize/2-ysh+388-lst_strt+lst_shft*2);
    draw_sprite(sp_icons,3,sursize/2+372,sursize/2-ysh+388-lst_strt+lst_shft*3);    
    
    surface_reset_target();
}

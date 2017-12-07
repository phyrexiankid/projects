///scr_surf_menu_3(id)
//сюрф поражения - встраиваем сюда и оставшиеся предметы?

var target = argument0;
//view_xview[0],425-128
with target {
    var ysh=353;
    var lst_shft=225;
    var shft=102;
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    draw_sprite_ext(sp_pause_body,0,sursize/2,sursize/2+shft-ysh+388-20,image_xscale,image_yscale,0,noone,1);
    draw_sprite_ext(sp_pause_head,0,sursize/2,sursize/2+shft-ysh,image_xscale,image_yscale,0,noone,1);
    draw_set_font(font_47);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    scr_draw_text_shadow(sursize/2,sursize/2+shft-ysh,mtf.l_popup[pause_type,0],3,c_white,make_color_rgb(74,11,12));
    draw_set_font(font_30);
    draw_set_color(make_color_rgb(254,196,101));
    scr_draw_text_shadow(sursize/2,sursize/2+shft-183,mtf.l_popup[pause_type,1],3,c_white,make_color_rgb(74,11,12));
    
    draw_set_font(font_27);
    draw_set_color(make_color_rgb(62,9,8));
    //левая сторона (одну сторону можно будет не рисовать)
    draw_sprite(sp_areas_lose_2,0,sursize/2-lst_shft,sursize/2-16+shft); // подкладка под значек
    draw_sprite(sp_icons_lose,0,sursize/2-lst_shft,sursize/2-16+shft);   // значек
    draw_sprite(sp_areas_lose,1,sursize/2-lst_shft,sursize/2+145+shft);  // облачно для эффекта
    draw_text(sursize/2-lst_shft,sursize/2+145+shft,string("+ ")+string(ceil(Main.time_start*0.3))+mtf.l_other[2]);          // эффект этой штуки 
    //draw_sprite(sursize/2-241,sursize/2+270,sp_areas_lose_2); - КНОПКА
    
    //правая сторона
    draw_sprite(sp_areas_lose_2,0,sursize/2+lst_shft,sursize/2-16+shft); // подкладка под значек
    draw_sprite(sp_icons_lose,1,sursize/2+lst_shft,sursize/2-16+shft);   // значек
    draw_sprite(sp_areas_lose,1,sursize/2+lst_shft,sursize/2+145+shft);  // облачно для эффекта
    draw_text(sursize/2+lst_shft,sursize/2+145+shft,string("+ ")+string(ceil(Main.time_start*0.5))+mtf.l_other[2]);          // эффект этой штуки 
    //draw_sprite(sursize/2-241,sursize/2+270,sp_areas_lose_2); - КНОПКА
    
        //впиливаем бывший сюрфейс проигрыша
        var size=Main.lose_size;
        var shift1 = sursize/2;/*sursize/2+91+50-20;*/
        //var yshift = 425;
        var yshift = 80//256/2;
        var color_mission_circ     = make_color_rgb(115,38,19);

        draw_sprite(sp_areas_lose,2,shift1+6,yshift);
        for(var i=0; i<size; i++) {
            rast = 250-50*(size-1)
            var shift = shift1-(rast*(size-1))/2+(rast*i);
            draw_sprite_ext(sp_gameplay_items,Main.lose_item[i,0],shift,yshift,1-0.2*(size-2),1-0.2*(size-2),0,noone,1);
            draw_set_color(color_mission_circ);
            draw_circle(shift+45,yshift+46,27,0);
            draw_set_color(c_white);
            draw_set_valign(fa_center);
            draw_set_halign(fa_middle);
            draw_set_font(font_27);
            draw_text(shift+45,yshift+46,Main.lose_item[i,1]);
        }
        
        /*//ромбб с кристаллами
        var shift2 = sursize/2-313;
        draw_sprite(sp_areas_lose,0,shift2,yshift);
        draw_sprite(sp_icons_lose,3,shift2-80,yshift);
        draw_set_color(c_white);
        draw_set_valign(fa_center);
        draw_set_halign(fa_middle);
        draw_set_font(font_42);
        scr_draw_text_shadow(shift2+30,yshift,Main.gems,3,c_white,make_color_rgb(74,11,12));*/
  
    surface_reset_target();
}

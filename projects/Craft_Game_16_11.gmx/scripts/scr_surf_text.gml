///scr_surf_text()

//recreate surface
ds_list_delete(main.surf_list,ds_list_find_index(main.surf_list,surf));
surface_free(surf);
surf=surface_create(1024,textbox_height);
ds_list_add(main.surf_list,surf);

//draw new text
surface_set_target(surf);
    draw_clear_alpha(c_white,0);
    draw_set_font(font);
    draw_set_color(c_black);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_ext(0,text_pos-top,line,sep,text_width);
surface_reset_target();

//move slider
var slider_min = top;
var slider_max = bottom-slider_height;
var pos=abs((text_pos-top)/(text_height-bottom+top));
slider.slider_step=(slider_max-slider_min) div lines;
slider.y=lerp(slider_min,slider_max,pos);





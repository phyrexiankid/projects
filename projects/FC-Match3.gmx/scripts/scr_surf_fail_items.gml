///scr_surf_fail_items(id)

with argument0 {//target

//оваллл с недособранными предметами
var size=Main.lose_size;
var shift1 = view_wview[0]/2+91+50;
//var yshift = 425;
var yshift = 256/2;
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

//ромбб с кристаллами
var shift2 = view_wview[0]/2-313;
draw_sprite(sp_areas_lose,0,shift2,yshift);
draw_sprite(sp_icons_lose,3,shift2-80,yshift);
draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_middle);
draw_set_font(font_42);
scr_draw_text_shadow(shift2+30,yshift,Main.gems,3,c_white,make_color_rgb(74,11,12))
//draw_text(shift2+30,yshift,15);//колл гемов
}

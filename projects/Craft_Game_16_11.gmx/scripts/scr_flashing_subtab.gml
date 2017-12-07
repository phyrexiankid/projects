///scr_flashing_subtab(tab,subtab)

var tab = argument0;
var subtab = argument1;

if !main.tab[tab,0].active with main.tab[tab,0] {
scr_flashing(x-sprite_xoffset,x-sprite_xoffset+sprite_width-1,y-sprite_yoffset,y-sprite_yoffset+sprite_height,0,id);
}

if !main.tab[tab,subtab].active with main.tab[tab,subtab] {
scr_flashing(x-sprite_xoffset,x-sprite_xoffset+sprite_width-1,y-sprite_yoffset,y-sprite_yoffset+sprite_height,0,id);
}

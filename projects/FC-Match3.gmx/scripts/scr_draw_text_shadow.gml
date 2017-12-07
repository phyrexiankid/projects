///scr_draw_text_shadow(x,y,text,shadow shift,text color, shadow color)

var xx=argument0;
var yy=argument1;
var text=argument2;
var shift=argument3;
var color_text=argument4;
var color_shadow=argument5;

draw_set_color(color_shadow);
draw_text(xx+shift,yy-shift,text);
draw_text(xx-shift,yy+shift,text);
draw_text(xx+shift,yy+shift,text);
draw_text(xx-shift,yy-shift,text);
draw_text(xx+shift,yy,text);
draw_text(xx-shift,yy,text);
draw_text(xx,yy-shift,text);
draw_text(xx,yy+shift*2.5,text);
draw_set_color(color_text);
draw_text(xx,yy,text);

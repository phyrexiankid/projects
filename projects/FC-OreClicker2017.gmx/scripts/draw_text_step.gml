//draw_text_step(x-spw+sph*3,y+21,round(cost/global.costmod))

var ch = 0;
if string_pos('.', string(argument2)) != 0{
ch = 1;
} 

var str = argument2;

var part1, width, step, lishn;
if ch = 0 step = string_length(string(str))-6;
else step = string_length(string(str))-9;
lishn = round(str / power(10,step)); 
width = string_width(string(lishn)+string("*10"));
draw_text(argument0,argument1,string(lishn)+string("*10"));
draw_set_font(font5);
draw_text(argument0+width+7,argument1-string_height(string(str))/2+5,step);





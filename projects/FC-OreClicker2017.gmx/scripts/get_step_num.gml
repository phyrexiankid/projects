//draw_text_step(round(cost/global.costmod))

var ch = 0;
if string_pos('.', string(argument0)) != 0{
ch = 1;
} 

var str = argument0;

var part1, width, step, lishn;
if ch = 0 step = string_length(string(str))-6;
else step = string_length(string(str))-9;
lishn = round(str / power(10,step)); 
width = string_width(string(lishn)+string("*10"));

return (string(lishn)+string("*10 "));






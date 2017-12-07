//draw_text_number(x,y,string);

var xx = argument0;
var yy = argument1;
/*if string_pos('.', string(argument2)) != 0{
var num = real(string_delete(string(argument2),string_length(string(argument2))-3,3));
} else {
var num = real(argument2);
}*/
var num = round(argument2);
var format = 0;
var sep = " ";

     if num < 1000 format = 1;
else if num >= 1000 and num < 10000 format = 2;
else if num >= 10000 and num < 100000 format = 3;
else if num >= 100000 and num < 1000000 format = 4;

else if num >= 1000000 and num < 10000000 format = 5;
else if num >= 10000000 and num < 100000000 format = 6;
else if num >= 100000000 and num < 1000000000 format = 7;

else if num >= 1000000000 and num < 10000000000 format = 8;
else if num >= 10000000000 and num < 100000000000 format = 9;
else if num >= 100000000000 and num < 1000000000000 format = 10;

else if num >= 1000000000000 and num < 10000000000000 format = 11;
else if num >= 10000000000000 and num < 100000000000000 format = 12;
else if num >= 100000000000000 and num < 1000000000000000 format = 13;

if format = 1
{
draw_text(xx,yy,num);
}
else if format = 2
{
var nn=string_insert(sep,string(num),2)
draw_text(xx,yy,nn);
}
else if format = 3
{
var nn=string_insert(sep,string(num),3)
draw_text(xx,yy,nn);
}
else if format = 4
{
var nn=string_insert(sep,string(num),4)
draw_text(xx,yy,nn);
}
///////
else if format = 5
{
var mm=string_insert(sep,string(num),2)
var nn=string_insert(sep,string(mm),6)
draw_text(xx,yy,nn);
}
else if format = 6
{
var mm=string_insert(sep,string(num),3)
var nn=string_insert(sep,string(mm),7)
draw_text(xx,yy,nn);
}
else if format = 7
{
var mm=string_insert(sep,string(num),4)
var nn=string_insert(sep,string(mm),8)
draw_text(xx,yy,nn);
}
///////
else if format = 8
{
var ll=string_insert(sep,string(num),2)
var mm=string_insert(sep,string(ll),6)
var nn=string_insert(sep,string(mm),10)
draw_text(xx,yy,nn);
}
else if format = 9
{
var ll=string_insert(sep,string(num),3)
var mm=string_insert(sep,string(ll),7)
var nn=string_insert(sep,string(mm),11)
draw_text(xx,yy,nn);
}
else if format = 10
{
var ll=string_insert(sep,string(num),4)
var mm=string_insert(sep,string(ll),8)
var nn=string_insert(sep,string(mm),12)
draw_text(xx,yy,nn);
}
///////
else if format = 11
{
var jj=string_insert(sep,string(num),2)
var ll=string_insert(sep,string(jj),6)
var mm=string_insert(sep,string(ll),10)
var nn=string_insert(sep,string(mm),14)
draw_text(xx,yy,nn);
}
else if format = 12
{
var jj=string_insert(sep,string(num),3)
var ll=string_insert(sep,string(jj),7)
var mm=string_insert(sep,string(ll),11)
var nn=string_insert(sep,string(mm),15)
draw_text(xx,yy,nn);
}
else if format = 13
{
var jj=string_insert(sep,string(num),4)
var ll=string_insert(sep,string(jj),8)
var mm=string_insert(sep,string(ll),12)
var nn=string_insert(sep,string(mm),16)
draw_text(xx,yy,nn);
}
else draw_text(xx,yy,num);













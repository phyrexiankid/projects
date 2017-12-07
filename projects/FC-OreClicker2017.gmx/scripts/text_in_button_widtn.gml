//text_in_button_widtn  (text);

/*var sep=8;
var td = string_width(argument0);            //длинна текста
var sd = sprite_get_width(sp_main_button)/sep; //длинна рамки
var kr = sprite_get_width(sp_main_button)      //передняя/зад рамка
var cl = round(td/sd)-6;                       //количество рамок
var pg = 0-((sd*cl)/2)+sd*3-kr;              //передняя граница
var zg = 0+((sd*cl)/2)-sd*3+kr;              //задняя граница

return zg-pg;*/

return string_width(argument0)+16;

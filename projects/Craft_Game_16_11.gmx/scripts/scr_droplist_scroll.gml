///scr_droplist_scroll()

begin_list=clamp(begin_list,0,ds_list_size(droplist)-list_lenght);
var slider_min = 0;
var slider_max = drop_height*list_lenght-slider_height;
var pos=abs(begin_list/(ds_list_size(droplist)-list_lenght));
slider_pos=lerp(slider_min,slider_max,pos);

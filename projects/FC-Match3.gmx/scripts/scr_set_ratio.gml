///scr_set_ratio(width,height)

if Main.mobile {

var dw = argument0;//display_get_width();
var dh = argument1;//display_get_height();
var ratio = dh/dw;
var www = round(room_height/ratio);
view_wport[0]=www;
view_hport[0]=room_height;
view_wview[0]=view_wport[0];
view_hview[0]=view_hport[0];
view_xview[0]= (room_width-view_wport[0])/2;
//var sooot = (room_width-view_wport[0])/2;
//view_xview[0]= round(sooot - (sooot)/28);

} else {
var dw = 1080;//display_get_width();
var dh = 1920;//display_get_height();
var ratio = dh/dw;
var www = round(room_height/ratio);
view_wport[0]=www;
view_hport[0]=room_height;
view_wview[0]=view_wport[0];
view_hview[0]=view_hport[0];
view_xview[0]= (room_width-view_wport[0])/2;
}



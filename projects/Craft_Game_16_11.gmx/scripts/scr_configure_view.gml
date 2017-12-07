///scr_configure_view()

var ratio=window_get_height()/window_get_width();
view_wview[0] = round(1920/ratio);
room_width=view_wview[0];
left_border   = (view_wview[0]-1080)/2;
view_xview[0] = left_border;

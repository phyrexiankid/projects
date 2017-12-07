///scr_fb_check_gifts(mode)

var mode=argument0;
//1 - из мейна
//2 - из самих подарков

gifts_map = ds_map_create();

//recieve lifes and life reqests
facebook_graph_request(string(facebook_user_id())+"/apprequests", "GET", -1, gifts_map);

if mode=2 alarm[4] = room_speed*2.1;
else alarm[4] = room_speed*2.1;





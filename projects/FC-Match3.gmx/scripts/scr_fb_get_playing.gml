///scr_fb_get_playing()

fb_playing_recieve = ds_map_create();
ds_map_clear(fb_playing_recieve);

//пытаемся получить список играющих друзей (тех, у кого есть счет в игре)
facebook_graph_request("251484648699009?fields=context", "GET", -1, fb_playing_recieve);
alarm[3] = room_speed*2;





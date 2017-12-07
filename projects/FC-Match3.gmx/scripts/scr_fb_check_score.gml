///scr_fb_check_score()

fb_scores = ds_map_create();
ds_map_clear(fb_scores);
//пытаемся получить список скоров друзей 
facebook_graph_request("251484648699009/scores", "GET", -1, fb_scores);
alarm[0] = room_speed*2;

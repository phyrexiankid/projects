///scr_load()

with Main { 

if file_exists("save.sav"){
//var loadFile=file_text_open_read("save.sav");
//var json=file_text_read_string(loadFile);
//var load_map=json_decode(json);
load_map = ds_map_secure_load("save.sav"); 

gold                       = load_map[? "gold"];                   
gems                       = load_map[? "gems"];                       
silver_keys                = load_map[? "silver_keys"];                
gold_keys                  = load_map[? "gold_keys"];                  
chest_basicdrop[0]         = load_map[? "chest_basicdrop_gold"];       
chest_basicdrop[3]         = load_map[? "chest_basicdrop_powerups"];   
spinner_basicdrop[0]       = load_map[? "spinner_basicdrop_gold "];    
spinner_basicdrop[3]       = load_map[? "spinner_basicdrop_powerups"]; 

eat_available        = load_map[? "eat_available"]; 
level_passed         = load_map[? "level_passed"]; 
daily_day            = load_map[? "daily_day"]; 
daily_start_count    = load_map[? "daily_start_count"]; 
show_feedback_popup  = load_map[? "show_feedback_popup"]; 
fb_connected         = load_map[? "fb_connected"];         
last_add             = load_map[? "last_add"];             
last_add_offer       = load_map[? "last_add_offer"];       
inap                 = load_map[? "inap"];                 
quest_type[0]        = load_map[? "quest_type[0]"];        
quest_type[1]        = load_map[? "quest_type[1]"];        
quest_type[2]        = load_map[? "quest_type[2]"];        
quest_progress[0]    = load_map[? "quest_progress[0]"];    
quest_progress[1]    = load_map[? "quest_progress[1]"];    
quest_progress[2]    = load_map[? "quest_progress[2]"];    
quest_target[0]      = load_map[? "quest_target[0]"];      
quest_target[1]      = load_map[? "quest_target[1]"];      
quest_target[2]      = load_map[? "quest_target[2]"];      
quest_daily_start    = load_map[? "quest_daily_start"];    
last_seance          = load_map[? "last_seance"];                   
last_gems_for_add[0] = load_map[? "last_gems_for_add[0]"]; 
starter_pack[5]      = load_map[? "starter_pack[5]"];      
tutorial             = load_map[? "tutorial"];             
sound                = load_map[? "sound"];                
music                = load_map[? "music"];                
next_push            = load_map[? "next_push"];  

if !is_undefined(load_map[? "promo[0]"]) promo[0] = load_map[? "promo[0]"]; 
if !is_undefined(load_map[? "leaderboard_logged"]) leaderboard_logged = load_map[? "leaderboard_logged"]; 

powerup_num[1] = load_map[? "powerup_num[1]"];
powerup_num[2] = load_map[? "powerup_num[2]"];
powerup_num[3] = load_map[? "powerup_num[3]"];
powerup_num[4] = load_map[? "powerup_num[4]"];
powerup_num[5] = load_map[? "powerup_num[5]"];

chest_type[1] = load_map[? "chest_type[1]"];
chest_type[2] = load_map[? "chest_type[2]"];
chest_type[3] = load_map[? "chest_type[3]"];
chest_type[4] = load_map[? "chest_type[4]"];
chest_type[5] = load_map[? "chest_type[5]"];
chest_type[6] = load_map[? "chest_type[6]"];
chest_type[7] = load_map[? "chest_type[7]"];
chest_type[8] = load_map[? "chest_type[8]"];
chest_type[9] = load_map[? "chest_type[9]"];

chest_time[1] = load_map[? "chest_time[1]"];
chest_time[2] = load_map[? "chest_time[2]"];
chest_time[3] = load_map[? "chest_time[3]"];
chest_time[4] = load_map[? "chest_time[4]"];
chest_time[5] = load_map[? "chest_time[5]"];
chest_time[6] = load_map[? "chest_time[6]"];
chest_time[7] = load_map[? "chest_time[7]"];
chest_time[8] = load_map[? "chest_time[8]"];
chest_time[9] = load_map[? "chest_time[9]"];

upgrade[1,0]  = load_map[? "upgrade[1,0]"];
upgrade[2,0]  = load_map[? "upgrade[2,0]"];
upgrade[3,0]  = load_map[? "upgrade[3,0]"];
upgrade[4,0]  = load_map[? "upgrade[4,0]"];
upgrade[5,0]  = load_map[? "upgrade[5,0]"];
upgrade[6,0]  = load_map[? "upgrade[6,0]"];
upgrade[7,0]  = load_map[? "upgrade[7,0]"];
upgrade[8,0]  = load_map[? "upgrade[8,0]"];
upgrade[9,0]  = load_map[? "upgrade[9,0]"];
upgrade[10,0] = load_map[? "upgrade[10,0]"];
upgrade[11,0] = load_map[? "upgrade[11,0]"];
upgrade[12,0] = load_map[? "upgrade[12,0]"];
upgrade[13,0] = load_map[? "upgrade[13,0]"];
upgrade[14,0] = load_map[? "upgrade[14,0]"];
upgrade[15,0] = load_map[? "upgrade[15,0]"];
upgrade[16,0] = load_map[? "upgrade[16,0]"];
upgrade[17,0] = load_map[? "upgrade[17,0]"];
upgrade[18,0] = load_map[? "upgrade[18,0]"];
upgrade[19,0] = load_map[? "upgrade[19,0]"];
upgrade[20,0] = load_map[? "upgrade[20,0]"];
upgrade[21,0] = load_map[? "upgrade[21,0]"];
upgrade[22,0] = load_map[? "upgrade[22,0]"];
upgrade[23,0] = load_map[? "upgrade[23,0]"];
upgrade[24,0] = load_map[? "upgrade[24,0]"];

upgrade[1,7]  = load_map[? "upgrade[1,7]"]; 
upgrade[2,7]  = load_map[? "upgrade[2,7]"]; 
upgrade[3,7]  = load_map[? "upgrade[3,7]"]; 
upgrade[4,7]  = load_map[? "upgrade[4,7]"]; 
upgrade[5,7]  = load_map[? "upgrade[5,7]"]; 
upgrade[6,7]  = load_map[? "upgrade[6,7]"]; 
upgrade[7,7]  = load_map[? "upgrade[7,7]"]; 
upgrade[8,7]  = load_map[? "upgrade[8,7]"]; 
upgrade[9,7]  = load_map[? "upgrade[9,7]"]; 
upgrade[10,7] = load_map[? "upgrade[10,7]"]; 
upgrade[11,7] = load_map[? "upgrade[11,7]"]; 
upgrade[12,7] = load_map[? "upgrade[12,7]"]; 
upgrade[13,7] = load_map[? "upgrade[13,7]"]; 
upgrade[14,7] = load_map[? "upgrade[14,7]"]; 
upgrade[15,7] = load_map[? "upgrade[15,7]"]; 
upgrade[16,7] = load_map[? "upgrade[16,7]"]; 
upgrade[17,7] = load_map[? "upgrade[17,7]"]; 
upgrade[18,7] = load_map[? "upgrade[18,7]"]; 
upgrade[19,7] = load_map[? "upgrade[19,7]"]; 
upgrade[20,7] = load_map[? "upgrade[20,7]"]; 
upgrade[21,7] = load_map[? "upgrade[21,7]"]; 
upgrade[22,7] = load_map[? "upgrade[22,7]"]; 
upgrade[23,7] = load_map[? "upgrade[23,7]"]; 
upgrade[24,7] = load_map[? "upgrade[24,7]"]; 

ds_map_destroy(load_map);

//file_text_close(loadFile);
} else {
if level_passed<1 level_passed=1;
scr_save();
}
}

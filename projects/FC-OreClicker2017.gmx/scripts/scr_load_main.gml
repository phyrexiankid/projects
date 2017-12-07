///scr_load_main()

with obj_controller { 

if file_exists("data.sav") {
//var loadFile=file_text_open_read("Save.sav");
//var json=file_text_read_string(loadFile);
//var load_map=json_decode(json);

general_map = ds_map_secure_load("data.sav"); 
load_map = ds_map_find_value(general_map,"main_map"); 
              
//if !is_undefined(load_map[? "promo[0]"]) promo[0] = load_map[? "promo[0]"]; 

ore =                   load_map[? 'ore']; 
ore_color =             load_map[? 'ore_color']; 
ore_picture =           load_map[? 'ore_picture']; 
global.sound =          load_map[? 'sound']; 
global.ore_count =      load_map[? 'ore_count']; 
global.ore_per_second = load_map[? 'ore_per_second']; 
global.ore_per_click =  load_map[? 'ore_per_click']; 
global.costmod =        load_map[? 'costmod']; 
global.max_click_num =  load_map[? 'max_click_num']; 
first_share =           load_map[? 'first_share']; 
global.base_click =     load_map[? 'base_click']; 
global.add_click =      load_map[? 'add_click']; 
max_base_click =        load_map[? 'max_base_click']; 
lvl_base_click =        load_map[? 'lvl_base_click']; 
ore_count_all =         load_map[? 'ore_count_all']; 
ore_count_hand =        load_map[? 'ore_count_hand']; 
ore_count_auto =        load_map[? 'ore_count_auto']; 
ore_count_clicks =      load_map[? 'ore_count_clicks']; 
unic_items =            load_map[? 'unic_items']; 
own_global_upgrades =   load_map[? 'own_global_upgrades']; 
own_items =             load_map[? 'own_items']; 
own_upgrades =          load_map[? 'own_upgrades']; 
max_bonus =             load_map[? 'max_bonus']; 

var prob_boost_mode_perc_num = load_map[? 'boost_mode_perc_num']; 
if prob_boost_mode_perc_num < 6   boost_mode_perc_num  = prob_boost_mode_perc_num;  
else boost_mode_perc_num  = 5;

boost_mode_perc =        load_map[? 'boost_mode_perc']; 
closing_taps =           load_map[? 'closing_taps']; 
closing_downspeed =      load_map[? 'closing_downspeed']; 

//offline
offline_time =           load_map[? 'offline_time']; 
offline_income[0] =      load_map[? 'offline_income[0]']; 
offline_income[1] =      load_map[? 'offline_income[1]']; 
offline_last =           load_map[? 'offline_last']; 

ds_map_destroy(load_map);

ds_map_destroy(general_map);
//file_text_close(loadFile);
}
}

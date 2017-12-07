///scr_save_main()

with obj_controller { 
//var saveFile=file_text_open_write('Save.sav');//эти можно переключать для зашифрованного и не очень файла
var general_map=ds_map_create();
if file_exists("data.sav") general_map = ds_map_secure_load("data.sav"); 

var save_map=ds_map_create();

save_map[? 'ore']                 = ore;                   
save_map[? 'ore_color']           = ore_color;                    
save_map[? 'ore_picture']         = ore_picture;                     
save_map[? 'sound']               = global.sound;              
save_map[? 'ore_count']           = global.ore_count;              
save_map[? 'ore_per_second']      = global.ore_per_second;             
save_map[? 'ore_per_click']       = global.ore_per_click;              
save_map[? 'costmod']             = global.costmod;             
save_map[? 'max_click_num']       = global.max_click_num;           
save_map[? 'first_share']         = first_share;                    
save_map[? 'base_click']          = global.base_click;             
save_map[? 'add_click']           = global.add_click;              
save_map[? 'max_base_click']      = max_base_click;                     
save_map[? 'lvl_base_click']      = lvl_base_click;                     
save_map[? 'ore_count_all']       = ore_count_all;                    
save_map[? 'ore_count_hand']      = ore_count_hand;                    
save_map[? 'ore_count_auto']      = ore_count_auto;                     
save_map[? 'ore_count_clicks']    = ore_count_clicks;                     
save_map[? 'unic_items']          = unic_items;                     
save_map[? 'own_global_upgrades'] = own_global_upgrades;                   
save_map[? 'own_items']           = own_items;                    
save_map[? 'own_upgrades']        = own_upgrades;                     
save_map[? 'max_bonus']           = max_bonus;                    
save_map[? 'boost_mode_perc']     = boost_mode_perc;       
save_map[? 'closing_taps']        = closing_taps;          
save_map[? 'closing_downspeed']   = closing_downspeed;     
//offline
save_map[? 'offline_time']        = offline_time;         
save_map[? 'offline_income[0]']   = offline_income[0];      
save_map[? 'offline_income[1]']   = offline_income[1];      
save_map[? 'offline_last']        = offline_last;        

//заменяем старую шоп мапу на новую, а сейв мап не трогаем
if !is_undefined(general_map) {
    
    if !is_undefined(ds_map_find_value(general_map,"main_map")) ds_map_delete(general_map,"main_map");

} else {
    //если ниче не открылось, делаем новую
    general_map=ds_map_create();
    ds_map_clear(general_map);
}

ds_map_add_map(general_map,"main_map",save_map);
ds_map_secure_save(general_map,"data.sav");

//var json_encoded=json_encode(save_map);
//file_text_write_string(saveFile,json_encoded);
//file_text_close(saveFile);

ds_map_destroy(save_map);

ds_map_destroy(general_map);
}


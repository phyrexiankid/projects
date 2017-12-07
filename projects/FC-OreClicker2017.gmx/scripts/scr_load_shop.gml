///scr_load_shop()

with obj_shop { 

if file_exists("data.sav") {
//var loadFile=file_text_open_read("Save.sav");
//var json=file_text_read_string(loadFile);
//var load_map=json_decode(json);

general_map = ds_map_secure_load("data.sav"); 
load_map = ds_map_find_value(general_map,"shop_map");  
//if is_undefined(load_map) load_map=ds_map_create();

for(sc=1;sc<51;sc++){
  shop_upgrade_bonus[sc]= load_map[? "sb["+string(sc)+"]"]; //shop_upgrade_bonus
  shop_cost[sc]         = load_map[? 'sc['+string(sc)+']']; //chop cost  
  for(su=0;su<5;su++){
    shop_upgrade[sc,su] = load_map[? 'su['+string(sc)+','+string(su)+']']; //shop_upgrade
  }
}
for(var to = 101; to<118; to++){ //меин апгрейды, которые равны 1, создаем
  shop_upgrade_main[to] = load_map[? 'sm['+string(to)+']'];//obj_upgrade_main - obj_upgrade_tab_main
}

ds_map_destroy(load_map);
ds_map_destroy(general_map);

//file_text_close(loadFile);
} 
}


//if !is_undefined(load_map[? "promo[0]"]) promo[0] = load_map[? "promo[0]"]; 

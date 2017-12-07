///scr_save_shop()

with obj_shop { 

var general_map=ds_map_create();
if file_exists("data.sav") general_map = ds_map_secure_load("data.sav"); 
//если там вдруг есть такая мапа то ниче не делаем???
if !is_undefined(ds_map_find_value(general_map,"shop_map")) {

//var saveFile=file_text_open_write('Save.sav');//эти можно переключать для зашифрованного и не очень файла
var save_map = ds_map_create();
           
//сами эти переменные типа shop_upgrade_bonus[1] уже в шопе
//определены (обычно в предыдущей сохранению строчке),
//так что просто записываем их                     
for(var i=1;i<51;i++) {
  save_map[? "sb[1]"]  = shop_upgrade_bonus[i];                                                      
  save_map[? "sc[1]"]   = shop_cost[i];
  for(var h=0;h<5;h++) {
   if i=50 and h>=1 break;
   save_map[? 'su['+string(i)+','+string(h)+']'] = shop_upgrade[i,h];
  }
} 
for(var ob = 101; ob<118; ob++){//если не все табы записаны, записываем
  save_map[? 'sm['+string(ob)+']' ] =0;
}

//заменяем старую шоп мапу на новую, а меин мап не трогаем
if !is_undefined(ds_map_find_value(general_map,"shop_map")) ds_map_delete(general_map,"shop_map");
ds_map_add_map(general_map,"shop_map",save_map);
ds_map_secure_save(general_map, "data.sav");

//var json_encoded=json_encode(save_map);
//file_text_write_string(saveFile,json_encoded);
//file_text_close(saveFile);

ds_map_destroy(save_map);
}
ds_map_destroy(general_map);
}

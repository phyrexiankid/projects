///scr_save()

//время сундуков и прокачек - если ==0, то все норм
//если нет - соответственно смотрится закончено оно или нет

with Main { 
//var saveFile=file_text_open_write('save.sav');//эти можно переключать для зашифрованного и не очень файла
var save_map = ds_map_create();

gold=ceil(gold);
save_map[? "gold"]                       = gold;
save_map[? "gems"]                       = gems;
save_map[? "silver_keys"]                = silver_keys;
save_map[? "gold_keys"]                  = gold_keys;
save_map[? "chest_basicdrop_gold"]       = chest_basicdrop[0];
save_map[? "chest_basicdrop_powerups"]   = chest_basicdrop[3];
save_map[? "spinner_basicdrop_gold "]    = spinner_basicdrop[0];
save_map[? "spinner_basicdrop_powerups"] = spinner_basicdrop[3];

save_map[? "eat_available"]       = eat_available;
save_map[? "level_passed"]        = level_passed;
save_map[? "daily_day"]           = daily_day;
save_map[? "daily_start_count"]   = daily_start_count;
save_map[? "show_feedback_popup"] = show_feedback_popup;
save_map[? "fb_connected"]        = fb_connected;
save_map[? "last_add"]            = last_add;
save_map[? "last_add_offer"]      = last_add_offer;
save_map[? "inap"]                = inap;

save_map[? "quest_type[0]"]        = quest_type[0];
save_map[? "quest_type[1]"]        = quest_type[1];
save_map[? "quest_type[2]"]        = quest_type[2];
save_map[? "quest_progress[0]"]    = quest_progress[0];
save_map[? "quest_progress[1]"]    = quest_progress[1];
save_map[? "quest_progress[2]"]    = quest_progress[2];
save_map[? "quest_target[0]"]      = quest_target[0];
save_map[? "quest_target[1]"]      = quest_target[1];
save_map[? "quest_target[2]"]      = quest_target[2];
save_map[? "quest_daily_start"]    = quest_daily_start;
save_map[? "last_seance"]          = last_seance;
save_map[? "last_gems_for_add[0]"] = last_gems_for_add[0];
save_map[? "starter_pack[5]"]      = starter_pack[5];
save_map[? "tutorial"]             = tutorial;
save_map[? "sound"]                = sound;
save_map[? "music"]                = music;
save_map[? "promo[0]"]             = promo[0];
save_map[? "next_push"]            = next_push;
save_map[? "leaderboard_logged"]   = leaderboard_logged;

save_map[? "powerup_num[1]"] = powerup_num[1];
save_map[? "powerup_num[2]"] = powerup_num[2];
save_map[? "powerup_num[3]"] = powerup_num[3];
save_map[? "powerup_num[4]"] = powerup_num[4];
save_map[? "powerup_num[5]"] = powerup_num[5];

save_map[? "chest_type[1]"] = chest_type[1];
save_map[? "chest_type[2]"] = chest_type[2];
save_map[? "chest_type[3]"] = chest_type[3];
save_map[? "chest_type[4]"] = chest_type[4];
save_map[? "chest_type[5]"] = chest_type[5];
save_map[? "chest_type[6]"] = chest_type[6];
save_map[? "chest_type[7]"] = chest_type[7];
save_map[? "chest_type[8]"] = chest_type[8];
save_map[? "chest_type[9]"] = chest_type[9];

save_map[? "chest_time[1]"] = chest_time[1];
save_map[? "chest_time[2]"] = chest_time[2];
save_map[? "chest_time[3]"] = chest_time[3];
save_map[? "chest_time[4]"] = chest_time[4];
save_map[? "chest_time[5]"] = chest_time[5];
save_map[? "chest_time[6]"] = chest_time[6];
save_map[? "chest_time[7]"] = chest_time[7];
save_map[? "chest_time[8]"] = chest_time[8];
save_map[? "chest_time[9]"] = chest_time[9];

save_map[? "upgrade[1,0]"]  = upgrade[1,0];
save_map[? "upgrade[2,0]"]  = upgrade[2,0];
save_map[? "upgrade[3,0]"]  = upgrade[3,0];
save_map[? "upgrade[4,0]"]  = upgrade[4,0];
save_map[? "upgrade[5,0]"]  = upgrade[5,0];
save_map[? "upgrade[6,0]"]  = upgrade[6,0];
save_map[? "upgrade[7,0]"]  = upgrade[7,0];
save_map[? "upgrade[8,0]"]  = upgrade[8,0];
save_map[? "upgrade[9,0]"]  = upgrade[9,0];
save_map[? "upgrade[10,0]"] = upgrade[10,0];
save_map[? "upgrade[11,0]"] = upgrade[11,0];
save_map[? "upgrade[12,0]"] = upgrade[12,0];
save_map[? "upgrade[13,0]"] = upgrade[13,0];
save_map[? "upgrade[14,0]"] = upgrade[14,0];
save_map[? "upgrade[15,0]"] = upgrade[15,0];
save_map[? "upgrade[16,0]"] = upgrade[16,0];
save_map[? "upgrade[17,0]"] = upgrade[17,0];
save_map[? "upgrade[18,0]"] = upgrade[18,0];
save_map[? "upgrade[19,0]"] = upgrade[19,0];
save_map[? "upgrade[20,0]"] = upgrade[20,0];
save_map[? "upgrade[21,0]"] = upgrade[21,0];
save_map[? "upgrade[22,0]"] = upgrade[22,0];
save_map[? "upgrade[23,0]"] = upgrade[23,0];
save_map[? "upgrade[24,0]"] = upgrade[24,0];

save_map[? "upgrade[1,7]"]  = upgrade[1,7];
save_map[? "upgrade[2,7]"]  = upgrade[2,7];
save_map[? "upgrade[3,7]"]  = upgrade[3,7];
save_map[? "upgrade[4,7]"]  = upgrade[4,7];
save_map[? "upgrade[5,7]"]  = upgrade[5,7];
save_map[? "upgrade[6,7]"]  = upgrade[6,7];
save_map[? "upgrade[7,7]"]  = upgrade[7,7];
save_map[? "upgrade[8,7]"]  = upgrade[8,7];
save_map[? "upgrade[9,7]"]  = upgrade[9,7];
save_map[? "upgrade[10,7]"] = upgrade[10,7];
save_map[? "upgrade[11,7]"] = upgrade[11,7];
save_map[? "upgrade[12,7]"] = upgrade[12,7];
save_map[? "upgrade[13,7]"] = upgrade[13,7];
save_map[? "upgrade[14,7]"] = upgrade[14,7];
save_map[? "upgrade[15,7]"] = upgrade[15,7];
save_map[? "upgrade[16,7]"] = upgrade[16,7];
save_map[? "upgrade[17,7]"] = upgrade[17,7];
save_map[? "upgrade[18,7]"] = upgrade[18,7];
save_map[? "upgrade[19,7]"] = upgrade[19,7];
save_map[? "upgrade[20,7]"] = upgrade[20,7];
save_map[? "upgrade[21,7]"] = upgrade[21,7];
save_map[? "upgrade[22,7]"] = upgrade[22,7];
save_map[? "upgrade[23,7]"] = upgrade[23,7];
save_map[? "upgrade[24,7]"] = upgrade[24,7];

ds_map_secure_save(save_map, "save.sav");

//var json_encoded=json_encode(save_map);
//file_text_write_string(saveFile,json_encoded);
//file_text_close(saveFile);

ds_map_destroy(save_map);
}


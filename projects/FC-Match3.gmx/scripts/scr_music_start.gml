///scr_music_start(normal,supressed)

//впервые делаем группу

var normal = argument0;
var supres = argument1;

//делаем аудиогруппу для этих треков
audio_destroy_sync_group(Main.main_sync_group);
Main.main_sync_group = audio_create_sync_group(true);
 Main.msc[0] = audio_play_in_sync_group(Main.main_sync_group, normal);
 Main.msc[1] = audio_play_in_sync_group(Main.main_sync_group, supres);
 audio_sound_gain(Main.msc[0], 0.8, 0);
 audio_sound_gain(Main.msc[1], 0, 0);
 
audio_start_sync_group(Main.main_sync_group);



//полезно - проверка что группа играет
//audio_sync_group_is_playing(group_index);

//log(string(Main.msc[0])+' - '+string(audio_sound_get_gain(Main.msc[0])));
//log(string(Main.msc[1])+' - '+string(audio_sound_get_gain(Main.msc[1])));

///scr_music_supress(effect speed in seconds)

var spd=argument0;

//трек 1 угромчаем, трек 0 заглушаем
audio_sound_gain(Main.msc[0], 0, room_speed*spd);
audio_sound_gain(Main.msc[1], 4, room_speed*spd);
 
//log(string(Main.msc[0])+' - '+string(audio_sound_get_gain(Main.msc[0])));
//log(string(Main.msc[1])+' - '+string(audio_sound_get_gain(Main.msc[1])));




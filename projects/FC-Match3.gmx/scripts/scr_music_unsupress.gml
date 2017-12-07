///scr_music_unsupress(effect speed in seconds)

var spd=argument0;

//трек 0 угромчаем, трек 1 заглушаем
audio_sound_gain(Main.msc[0], 0.8, room_speed*spd);
audio_sound_gain(Main.msc[1], 0, room_speed*spd);
 
//log(string(Main.msc[0])+' - '+string(audio_sound_get_gain(Main.msc[0])));
//log(string(Main.msc[1])+' - '+string(audio_sound_get_gain(Main.msc[1])));
/*
0 - 1
1 - 0
0 - 0
1 - 1
*/

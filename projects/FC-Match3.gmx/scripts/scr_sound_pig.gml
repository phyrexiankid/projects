///scr_sound_pig(snd,pitch,gain)

//это дополнительная проверка, 
//чтоб свинья сама себя не перебивала

if !audio_is_playing(Main.pig_snd) {
//если какой то свинячий звук уже произносится, 
//этот не будет произноситься
Main.pig_snd=argument0;
scr_sound(Main.pig_snd,1,0,argument1,argument2);
}



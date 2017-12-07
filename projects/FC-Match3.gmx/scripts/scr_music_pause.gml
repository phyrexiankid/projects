///scr_music_pause()


if audio_sync_group_is_playing(Main.main_sync_group) {
    //сохраняем громкость
    Main.msc[2]=audio_sound_get_gain(Main.msc[0]);
    Main.msc[3]=audio_sound_get_gain(Main.msc[1]);
    audio_sound_gain(Main.msc[0], 0, 0);
    audio_sound_gain(Main.msc[1], 0, 0);
    audio_pause_sync_group(Main.main_sync_group);
}
 



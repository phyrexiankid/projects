///scr_music_resume()

if Main.music=1 {
    audio_resume_sync_group(Main.main_sync_group);
    audio_sound_gain(Main.msc[0], 0.8/*Main.msc[2]*/, room_speed*2);
    audio_sound_gain(Main.msc[1], 0/*Main.msc[3]*/, room_speed*2);
}


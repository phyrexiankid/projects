///scr_button_rebounce()
if make_sound=1 {
    randomize();
    var ptch=random_range(0.8,1.2);
    scr_sound(snd_appear,1,0,ptch,0.6);
}

image_xscale=0.75
image_yscale=0.75
timeline_index = tml_menu_bounce;
timeline_position = 0;
timeline_running = true;
timeline_loop = 0;
timeline_speed = 0.5*global.spd;



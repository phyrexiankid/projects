///scr_tip_close(quick)

var quick=argument0;//если 1-сразу опускаем без дерганья

//1 из 5 со звуком
var chns=choose(0,0,1);
if chns=1 {
    var trck=choose(snd_pig_tip_out1,snd_pig_tip_out1,snd_pig_tip_out1,snd_pig_tip_out2);
    var ptch=random_range(0.95,1.1);
    scr_sound(trck,1,0,ptch,0.7);
}

timeline_index = tml_tip_out;
timeline_position = 3*quick;
timeline_running = true;
timeline_loop = 0;
timeline_speed = 1;//*global.spd;

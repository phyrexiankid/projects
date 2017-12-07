///scr_powerup_freeze_release(id)

//фриз тайм

obj_controller_gameplay.time_speed=0;
Main.freeze_moves=Main.powerup_level[5]+3;

scr_sound(snd_freeze,1,0,1,1);

//музыка на паузе
scr_music_pause();

//obj_powerup.alarm[4]=(Main.powerup_level[4]+3-1)*room_speed;

var filter = instance_create(0,0,obj_screen_filter);
filter.color = make_color_rgb(76,254,255);
filter.percent = 15/100;
filter.target = obj_powerup_effect_freeze;

var screenshift=0//(1536-view_wview[0])/5.5; //задвинем немного боковые полоски фриза на узких экранах

var s1=instance_create(view_xview[0]-screenshift,0,obj_powerup_effect_freeze);
var s2=instance_create(view_xview[0]+view_wview[0]+screenshift,0,obj_powerup_effect_freeze);
var s3=instance_create(view_xview[0]+view_wview[0],0,obj_powerup_effect_freeze);
var s4=instance_create(view_xview[0],view_hview[0],obj_powerup_effect_freeze);
s2.image_xscale=-1;
s3.image_angle=-90;
s4.image_angle=90;

global.powerup_aim = 0;
global.powerup_activate = 1;
//global.powerup_num = 0;
if instance_exists(obj_checker_main) with obj_checker_main instance_destroy();
with obj_powerup {
    x=x_start;
    y=y_start;
}

//если заюзать помощника нужно для квеста
for(var i=0;i<3;i++) {
    if Main.quest_type[i]=14 {
        //+1 и сохранить
        Main.quest_progress[i]+=1;
        scr_save();
    }   
}

Main.powerup_num[5] -=1;
//все

//написать число движений. если что дальше они пишутся в степе контроллера
var timer=instance_create(room_width/2,room_height/2,obj_countdown);
timer.progress = -1;//-1 вниз, 1 вверх
timer.count = Main.freeze_moves; //такой отсчет
timer.target_count = Main.freeze_moves; //к чему идем
timer.text = ''; //если не '', то этот текст показывается вместо нуля
timer.final_timer=2;
timer.with_pause=0;

///scr_powerup_slomo_release(id)

//сло мо

obj_controller_gameplay.time_speed=0.5;

obj_powerup.alarm[4]=((Main.powerup_level[4]+2)*5)*room_speed;

var filter = instance_create(0,0,obj_screen_filter);
filter.color = make_color_rgb(218, 29, 198);
filter.percent = 15/100;
filter.target = obj_powerup_effect_slomo;

var s1=instance_create(view_xview[0],0-500,obj_powerup_effect_slomo);
s1.type=1; //1-ползет вверх 2-вниз
s1.ind=1;
var s1=instance_create(view_xview[0],sprite_get_height(sp_powerup_slomo)-500,obj_powerup_effect_slomo);
s1.type=1; //1-ползет вверх 2-вниз
s1.ind=1;
var s1=instance_create(view_xview[0],0-500,obj_powerup_effect_slomo);
s1.type=2;
s1.ind=2;
var s1=instance_create(view_xview[0],sprite_get_height(sp_powerup_slomo)-500,obj_powerup_effect_slomo);
s1.type=2;
s1.ind=2;


var s2=instance_create(view_xview[0]+view_wview[0],0-1000,obj_powerup_effect_slomo);
s2.type=1; 
s2.image_xscale=-1;
s2.ind=3;
var s2=instance_create(view_xview[0]+view_wview[0],sprite_get_height(sp_powerup_slomo)-1000,obj_powerup_effect_slomo);
s2.type=1;
s2.image_xscale=-1;
s2.ind=3;
var s2=instance_create(view_xview[0]+view_wview[0],0-1000,obj_powerup_effect_slomo);
s2.type=2; 
s2.image_xscale=-1;
s2.ind=4;
var s2=instance_create(view_xview[0]+view_wview[0],sprite_get_height(sp_powerup_slomo)-1000,obj_powerup_effect_slomo);
s2.type=2;
s2.image_xscale=-1;
s2.ind=4;

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

Main.powerup_num[4] -=1;
//все


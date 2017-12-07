///scr_powerup_clean()

global.powerup_aim = 0;
global.powerup_num = 0;

if instance_exists(obj_checker_main) with obj_checker_main instance_destroy();
if instance_exists(obj_screen_filter) and Main.freeze_moves<=0 and obj_powerup.alarm[4]<=0 with obj_screen_filter instance_destroy();
if instance_exists(obj_powerup_effect_slomo) and obj_powerup.alarm[4]<=0 with obj_powerup_effect_slomo instance_destroy();
if instance_exists(obj_powerup_effect_freeze) and Main.freeze_moves<=0 with obj_powerup_effect_freeze instance_destroy();

//вернуть на место паверапы
with obj_powerup {
    x=x_start;
    y=y_start;
}

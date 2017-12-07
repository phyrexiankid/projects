///scr_spawn_reward(x,y)

    var drop=instance_create(argument0,argument1,obj_spinner_drop);   
    drop.num = scr_count_spinner_gold();
    if Main.level_rewarded=0 drop.num/=2;
    drop.num=ceil(drop.num);
    drop.type = 0;
    drop.index = 6;
    drop.size=0.8;
    drop.reward=1;
    drop.font=font_42;
    drop.alarm[2]=room_speed*1;

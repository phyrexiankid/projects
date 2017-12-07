///scr_powerup_fly_effect(id)

torget = argument0;

with torget {
    target=instance_nearest(x,y,obj_item);
    target.effect_destroy_row = choose(1,2);
    //target.sprite_index = sp_gameplay_item_selected;
    target.alarm[5]=1;
    instance_destroy();
}

///scr_autopause()

if instance_exists(obj_controller_gameplay) {
Main.alarm[8]=obj_controller_gameplay.autopause;
obj_pig.alarm[0]=obj_controller_gameplay.autopause/2;
}

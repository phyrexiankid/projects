///scr_powerup_cross_create(id,cross level)

var target=argument0;
var level=argument1;
var xshift = 200;
var yshift = 180;

//первый уровень - 5 штук, дальше с каждой по +4
var mainn=instance_create(mouse_x+xshift*0,mouse_y+yshift*0,obj_checker_main);
mainn.powerup=2;
with mainn {
ds_list_add(list_checker_x,0,0,-1,0,1);
ds_list_add(list_checker_y,0,-1,0,1,0);
}

if level >= 1 { 
with mainn {
ds_list_add(list_checker_x,0,-2,0,2);
ds_list_add(list_checker_y,-2,0,2,0);
}
}

if level >= 2 { 
with mainn {
ds_list_add(list_checker_x,0,-3,0,3);
ds_list_add(list_checker_y,-3,0,3,0);
}
}

if level >= 3 { 
with mainn {
ds_list_add(list_checker_x,0,-4,0,4);
ds_list_add(list_checker_y,-4,0,4,0);
}
}

if level >= 4 { 
with mainn {
ds_list_add(list_checker_x,1,-1,-1,1);
ds_list_add(list_checker_y,-1,-1,1,1);
}
}
///
if level >= 5 { 
with mainn {
ds_list_add(list_checker_x,2,-2,-2,2);
ds_list_add(list_checker_y,-1,-1,1,1);
}
}

if level >= 6 { 
with mainn {
ds_list_add(list_checker_x,1,-1,-1,1);
ds_list_add(list_checker_y,-2,-2,2,2);
}
}

if level >= 7 { 
with mainn {
ds_list_add(list_checker_x,3,-3,-3,3);
ds_list_add(list_checker_y,-1,-1,1,1);
}
}

if level >= 8 { 
with mainn {
ds_list_add(list_checker_x,1,-1,-1,1);
ds_list_add(list_checker_y,-3,-3,3,3);
}
}

if level >= 9 { 
with mainn {
ds_list_add(list_checker_x,2,-2,-2,2);
ds_list_add(list_checker_y,-2,-2,2,2);
}
}

if level >= 10 { 
with mainn {
ds_list_add(list_checker_x,0,-0,-0,0);
ds_list_add(list_checker_y,-5,-6,5,6);
}
}
/*

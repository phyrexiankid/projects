///scr_powerup_grib_create(id,grib level)

var target=argument0;
var level=argument1;
var xshift = 200;
var yshift = 180;

var mainn=instance_create(mouse_x+xshift*0,mouse_y+yshift*0,obj_checker_main);
mainn.powerup=1;
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
//первый уровень - центр и 4 вокруг
var main=instance_create(mouse_x+xshift*0,mouse_y+yshift*0,obj_checker_main);
main.powerup=1;
instance_create(mouse_x+xshift*0,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*0,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*1,obj_checker);
instance_create(mouse_x+xshift*1,mouse_y+yshift*0,obj_checker);

if level >= 1 { 
instance_create(mouse_x+xshift*0,mouse_y+yshift*-2,obj_checker);
instance_create(mouse_x+xshift*-2,mouse_y+yshift*0,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*2,obj_checker);
instance_create(mouse_x+xshift*2,mouse_y+yshift*0,obj_checker);
}

if level >= 2 { 
instance_create(mouse_x+xshift*0,mouse_y+yshift*-3,obj_checker);
instance_create(mouse_x+xshift*-3,mouse_y+yshift*0,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*3,obj_checker);
instance_create(mouse_x+xshift*3,mouse_y+yshift*0,obj_checker);
}

if level >= 3 { 
instance_create(mouse_x+xshift*0,mouse_y+yshift*-4,obj_checker);
instance_create(mouse_x+xshift*-4,mouse_y+yshift*0,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*4,obj_checker);
instance_create(mouse_x+xshift*4,mouse_y+yshift*0,obj_checker);
}

if level >= 4 { 
instance_create(mouse_x+xshift*1,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*1,obj_checker);
instance_create(mouse_x+xshift*1,mouse_y+yshift*1,obj_checker);
}
///
if level >= 5 { 
instance_create(mouse_x+xshift*2,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-2,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-2,mouse_y+yshift*1,obj_checker);
instance_create(mouse_x+xshift*2,mouse_y+yshift*1,obj_checker);
}

if level >= 6 { 
instance_create(mouse_x+xshift*1,mouse_y+yshift*-2,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*-2,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*2,obj_checker);
instance_create(mouse_x+xshift*1,mouse_y+yshift*2,obj_checker);
}

if level >= 7 { 
instance_create(mouse_x+xshift*3,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-3,mouse_y+yshift*-1,obj_checker);
instance_create(mouse_x+xshift*-3,mouse_y+yshift*1,obj_checker);
instance_create(mouse_x+xshift*3,mouse_y+yshift*1,obj_checker);
}

if level >= 8 { 
instance_create(mouse_x+xshift*1,mouse_y+yshift*-3,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*-3,obj_checker);
instance_create(mouse_x+xshift*-1,mouse_y+yshift*3,obj_checker);
instance_create(mouse_x+xshift*1,mouse_y+yshift*3,obj_checker);
}

if level >= 9 { 
instance_create(mouse_x+xshift*2,mouse_y+yshift*-2,obj_checker);
instance_create(mouse_x+xshift*-2,mouse_y+yshift*-2,obj_checker);
instance_create(mouse_x+xshift*-2,mouse_y+yshift*2,obj_checker);
instance_create(mouse_x+xshift*2,mouse_y+yshift*2,obj_checker);
}

if level >= 10 { 
instance_create(mouse_x+xshift*0,mouse_y+yshift*-5,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*-6,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*5,obj_checker);
instance_create(mouse_x+xshift*0,mouse_y+yshift*6,obj_checker);
}
*/

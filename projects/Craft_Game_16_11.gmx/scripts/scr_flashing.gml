///scr_flashing(x1,x2,y1,y2,time,target)

//create flashing rad zone
//time=0 if need click to stop

var x1 = argument0;
var x2 = argument1;
var y1 = argument2;
var y2 = argument3;
var time = argument4;
var target = argument5;

var flash = instance_create(x1,y1,obj_flashing);
flash.target=target;
flash.yy=y2;
flash.xx=x2;
if time!=0 {
    flash.alarm[1]=time;
    flash.alpha=1
}

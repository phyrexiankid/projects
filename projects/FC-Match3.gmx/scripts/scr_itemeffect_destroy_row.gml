///scr_itemeffect_destroy_row(id,0)
//0 - horizontal, 1 - vertical

targett = argument0;
var flat = argument1;

column = argument0.column;
row = argument0.row;
number = 0;//считаем, сколько таких уничтожилось, чтоб получить очки за них тоже

if flat = 0 { //0 - horizontal
    var exp1=instance_create(argument0.x,argument0.y,obj_explosion);
    exp1.dir = 0; 
    var exp2=instance_create(argument0.x,argument0.y,obj_explosion);
    exp2.dir = 2; 
    with obj_item {
        if id!=other.targett and row = other.row {
            if effect_destroy_row=1 effect_destroy_row=2;
            other.number+=1;
            alarm[1]=(abs(column-other.column))*4+1;  
        } 
    }
} else { //1 - vertical
    var exp1=instance_create(argument0.x,argument0.y,obj_explosion);
    exp1.dir = 1; 
    var exp2=instance_create(argument0.x,argument0.y,obj_explosion);
    exp2.dir = 3; 
    with obj_item {
        if id!=other.targett and column = other.column {
            if effect_destroy_row=2 effect_destroy_row=1;
            other.number+=1;
            alarm[1]=(abs(row-other.row))*4+1; 
        } 
    }
}

global.select_number+=number;
with target scr_get_score();
global.select_number=0;

//return number;




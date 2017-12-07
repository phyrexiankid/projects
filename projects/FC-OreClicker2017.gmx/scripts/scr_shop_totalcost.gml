///scr_shop_totalcost(num)

var numm=argument0;

draw_set_font(obj_controller.main_font3);
totalcost = obj_shop.shop_cost[numm]/global.costmod;
step = 0;
/*
     if totalcost >=1 and totalcost < 10000000 totalcost_s=string(round(totalcost));
else if totalcost >= 10000000 
{
step = get_step_step(totalcost);
totalcost_s = get_step_num(totalcost); 
step_width = string_width(string(totalcost_s));
}
else if totalcost < 1 totalcost_s = string_format(totalcost,1,1);
*/

if totalcost < 10 {
    totalcost_s= string_format(string(totalcost),1,1);
    step_width = string_width(string(totalcost));
} else if totalcost >= 10 and totalcost < 10000000000 {
totalcost_s=string(totalcost);
if      string_pos('.', string(totalcost)) = 0            totalcost_s=string(totalcost)+string('.00');
var tempNumber = string_length(totalcost_s);
if tempNumber > 6 {
    totalcost_s = string_insert(" ", totalcost_s, tempNumber-5);
    if tempNumber > 9 {
        totalcost_s = string_insert(" ", totalcost_s, tempNumber-8);
        if tempNumber > 12 {
            totalcost_s = string_insert(" ", totalcost_s, tempNumber-11);
        }
    }
}
totalcost_s=string_delete(totalcost_s,string_length(totalcost_s)-2,3);
step_width = string_width(totalcost_s);

} else if totalcost >= 10000000000 {
totalcost_s=string(totalcost);
if string_pos('.', string(totalcost)) = 0 totalcost_s=string(totalcost)+string('.00');
var tempNumber = string_length(totalcost_s);    
step = tempNumber-13;

totalcost_s = string_delete(totalcost_s,tempNumber-2-step,3+step);
step+=1;
tempNumber = string_length(totalcost_s); 

if tempNumber > 3 {
    totalcost_s = string_insert(" ", totalcost_s, tempNumber-2);
    if tempNumber > 6 {
        totalcost_s = string_insert(" ", totalcost_s, tempNumber-5);
        if tempNumber > 9 {
            totalcost_s = string_insert(" ", totalcost_s, tempNumber-8);
            /*if tempNumber > 12 {
                totalcost_s = string_insert(" ", totalcost_s, tempNumber-11);
            }*/
        }
    }
}
totalcost_s+=string('*10');
step_width = string_width(totalcost_s);

}

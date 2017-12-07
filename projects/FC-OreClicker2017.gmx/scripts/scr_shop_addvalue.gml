///scr_shop_addvalue()

/*draw_set_font(obj_controller.main_font3);
add_value = obj_shop.shop_upgrade_bonus[num]/global.costmod;
value_step = 0;

     if add_value < 10                           add_value = string('+')+string_format(add_value,1,1)+string(obj_controller.l_persec);
else if add_value >= 10 and add_value < 10000000 add_value = string("+")+string(round(add_value))+string(obj_controller.l_persec);
else if add_value >= 10000000{
value_step = get_step_step(add_value);
add_value = get_step_num(add_value); 
value_width = string_width(string(add_value));

add_value = string('+')+string(add_value);
}
*/

draw_set_font(obj_controller.main_font3);
add_value = obj_shop.shop_upgrade_bonus[num]/global.costmod;
value_step = 0;

if add_value < 10 {
    add_value= string('+')+string_format(add_value,1,1)+string(obj_controller.l_persec);
    value_width = string_width(string(add_value));
} else if add_value >= 10 and add_value < 10000000000 {
add_value=string(add_value);
if      string_pos('.', string(add_value)) = 0            add_value=string(add_value)+string('.00');
var tempNumber = string_length(add_value);
if tempNumber > 6 {
    add_value = string_insert(" ", add_value, tempNumber-5);
    if tempNumber > 9 {
        add_value = string_insert(" ", add_value, tempNumber-8);
        if tempNumber > 12 {
            add_value = string_insert(" ", add_value, tempNumber-11);
        }
    }
}
add_value='+'+string_delete(add_value,string_length(add_value)-2,3)+obj_controller.l_persec;
value_width = string_width(add_value);

} else if add_value >= 10000000000 {
add_value=string(add_value);
if string_pos('.', string(add_value)) = 0 add_value=string(add_value)+string('.00');
var tempNumber = string_length(add_value);    
value_step = tempNumber-13;

add_value = string_delete(add_value,tempNumber-2-value_step,3+value_step);
value_step+=1;
tempNumber = string_length(add_value); 

if tempNumber > 3 {
    add_value = string_insert(" ", add_value, tempNumber-2);
    if tempNumber > 6 {
        add_value = string_insert(" ", add_value, tempNumber-5);
        if tempNumber > 9 {
            add_value = string_insert(" ", add_value, tempNumber-8);
        }
    }
}
add_value='+'+add_value+'*10';
value_width = string_width(add_value);
add_value+='  '+obj_controller.l_persec;
} else {
    add_value= string('+')+string_format(add_value,1,1)+string(obj_controller.l_persec);
    value_width = string_width(string(add_value));
}


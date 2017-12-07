///scr_indicator(label,type,amount);

//span a little debug indicator
var label=argument0;
var type=argument1;
var amount=argument2;
var str='';
var clr=c_black;

if label='item' {
    //+Banana x2
    if amount>0 {str+='+'; clr=c_aqua;/*make_color_rgb(252,201,67);*/}
    else {str+='-'; clr=c_red}
    str+=string(type);
    if abs(amount)>1 {str+=' ('; str+=string(amount); str+=')'}
} else if label='skill' {
    //Forage +5
    clr=c_yellow;
    str+='Failure: ';
    str+=string(type);
    str+=' +';
    str+=string(amount);
    //add the same line to the gather section
    scr_forage_add(str,-1);
} else if label='wrecked' {//if a tool has 0 durability
    //Forage +5
    clr=c_red;
    str+=string(type);
    str+=' get wrecked!...';
}


 

var indicator=instance_create(room_width/2,room_height/2+300,obj_indicator);
indicator.color=clr;
indicator.str=str;

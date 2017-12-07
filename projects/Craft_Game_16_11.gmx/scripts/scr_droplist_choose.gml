///scr_droplist_choose()

line=ds_list_find_value(droplist,choosed);

switch index {

case 0: //craft - eat for craft
scr_droplist_fullline_food();
break;

case 1://craft - eat for gather
scr_droplist_fullline_food();
break;
    
case 2://craft tool
    //change the craft label
    var new_craft_tool='';
    if ds_list_find_value(droplist,choosed) = main.item[0,0] new_craft_tool=main.tool_label[0];       //Hands
    else if ds_list_find_value(droplist,choosed) = main.item[0,3] new_craft_tool=main.tool_label[3];  //Rock
    else if ds_list_find_value(droplist,choosed) = main.item[0,53] new_craft_tool=main.tool_label[2]; //Sharp stone
    else if ds_list_find_value(droplist,choosed) = main.item[0,54] new_craft_tool=main.tool_label[1]; //Primitive axe
    else if ds_list_find_value(droplist,choosed) = main.item[0,55] new_craft_tool=main.tool_label[2]; //Primitive knife
    else if ds_list_find_value(droplist,choosed) = main.item[0,56] new_craft_tool=main.tool_label[3]; //Primitive hammer
    else if ds_list_find_value(droplist,choosed) = main.item[0,58] new_craft_tool=main.tool_label[1]; //Stone axe
    else new_craft_tool=main.tool_label[0];                                                           //Default
    
    with obj_button {
        if index=2 {tool=new_craft_tool;}
    }
    scr_droplist_fullline_tool()
break;

case 3://forage tool
    //change the gather label
    var new_gather_label='';
    var new_tool_label='';
    if ds_list_find_value(droplist,choosed) = main.item[0,0] {new_gather_label=main.label[0]; new_tool_label=main.tool_label[0];}
    else if ds_list_find_value(droplist,choosed) = main.item[0,54] {new_gather_label=main.label[1]; new_tool_label=main.tool_label[1];}
    else if ds_list_find_value(droplist,choosed) = main.item[0,58] {new_gather_label=main.label[1]; new_tool_label=main.tool_label[1];}
    else {new_gather_label=main.label[0]; new_tool_label=main.tool_label[0];}
    
    with obj_button {
        if index=3 {line=new_gather_label; tool=new_tool_label;}
    }
    scr_droplist_fullline_tool()
break;

case 4://ingridient 1 num  
case 5://ingridient 2 num  
case 6://ingridient 3 num  
    if line=0 {with target {choosed=0; line=''; scr_droplist_create();}}
break;
    
case 7://ingridient 1   
case 8://ingridient 2   
case 9://ingridient 3   
with target {
    if other.line!='' line = 1;
    else line = 0;
    scr_droplist_create();
}
break;

}



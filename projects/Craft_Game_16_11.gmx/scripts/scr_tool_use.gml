///scr_tool_use(tool index)

//find this tool in inventory and change its durability

var item_index=ds_list_find_index(main.item_list,argument0);
if item_index=-1 exit;
if main.item[3,item_index]=0 exit;

var dur=main.item[3,item_index]/power(10,string_length(string(main.item[3,item_index]))); 

var numm=ds_list_find_index(main.inventory_list,item_index);
if numm!=-1 and !is_undefined(numm) {

    var new_dur=(ds_list_find_value(main.inventory_num,numm) mod 1) - (dur/main.item[3,item_index]);
    
    if new_dur<=0 {//item has 0 durability now
        ds_list_replace(main.inventory_num,numm,ds_list_find_value(main.inventory_num,numm) div 1);
        scr_indicator('wrecked',argument0,1); 
        scr_inventory_add(item_index,-1);
        with obj_dropdown {
            if index=2 or index=3 {
                scr_droplist_choose()
            }
        }
        
    } else {
        ds_list_replace(main.inventory_num,numm,(ds_list_find_value(main.inventory_num,numm) div 1)+new_dur);
        with obj_dropdown {
            if index=2 or index=3 {
                scr_droplist_create()
            }
        }
    }
}




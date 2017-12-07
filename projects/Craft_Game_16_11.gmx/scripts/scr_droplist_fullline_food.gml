///scr_droplist_fullline_food()

if string_pos(' (',line)!=0 {
    line=string_copy(line,1,string_pos(' (',line)-1);
}
//add number to the item in dropdown
var numm=ds_list_find_index(main.inventory_list,ds_list_find_index(main.item_list,line));
if numm=-1 or is_undefined(numm) full_line=line;
else full_line=string(line)+' ('+string(floor(ds_list_find_value(main.inventory_num,numm)))+')';


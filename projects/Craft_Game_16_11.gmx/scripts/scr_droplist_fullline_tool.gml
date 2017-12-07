///scr_droplist_fullline_tool()

//add durability to the tool in dropdown
if line=main.tool_default full_line=line;
else {
    var numm=ds_list_find_index(main.inventory_list,ds_list_find_index(main.item_list,line));
    if numm=-1 or is_undefined(numm) full_line=line;
    else {
        var max_dur=main.item[3,ds_list_find_index(main.item_list,line)];
        var dur = (ds_list_find_value(main.inventory_num,numm) mod 1)*power(10,string_length(string(main.item[3,ds_list_find_index(main.item_list,line)])));
        full_line=string(line)+' '+string(round(dur))+'/'+string(max_dur);
    }
}



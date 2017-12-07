///scr_droplist_create_ingrnum()

    ds_list_clear(droplist);
    
    with target {
        var itm=ds_list_find_index(main.item_list,line);
        if itm!=-1 {
            var pos=ds_list_find_index(main.inventory_list,itm);
            ds_list_add(target.droplist,0);
            if pos!=-1 {//if we have this item in inventory
                //how many of them we can use
                for(var i=0; i<ds_list_find_value(main.inventory_num,pos); i++) {
                    ds_list_add(target.droplist,i+1);
                } 
            }  
        } else ds_list_add(target.droplist,0);
    }
    
    if choosed > ds_list_size(droplist)-1 choosed=ds_list_size(droplist)-1;
    else if choosed < 0 choosed=0;
    if choosed=0 and ds_list_size(droplist)>1 choosed=1;
    
    line=ds_list_find_value(droplist,choosed);

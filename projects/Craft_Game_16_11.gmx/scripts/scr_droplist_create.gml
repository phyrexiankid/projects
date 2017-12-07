///scr_droplist_create()

    switch index {
    
    case 0: //eat for craft
    //choose what food from inventory to eat
    ds_list_clear(droplist);
    
    for(var i=0; i<ds_list_size(main.inventory_list); i++) {
        var itm=ds_list_find_value(main.inventory_list,i);
        if main.item[2,itm]!=0 {
            ds_list_add(droplist,string(main.item[0,itm])+' ('+string(ds_list_find_value(main.inventory_num,i))+')');
        }
    }
    
    if ds_list_size(droplist) > 0 and choosed<=ds_list_size(droplist)-1 {line=ds_list_find_value(droplist,choosed); scr_droplist_fullline_food();};
    else {line = 'Choose...'; full_line = 'Choose...'};
    break;
    
    case 1://eat for forage
    //choose what food from inventory to eat
    ds_list_clear(droplist);
   
    for(var i=0; i<ds_list_size(main.inventory_list); i++) {
        var itm=ds_list_find_value(main.inventory_list,i);
        if main.item[2,itm]!=0 {
            ds_list_add(droplist,string(main.item[0,itm])+' ('+string(ds_list_find_value(main.inventory_num,i))+')');
        }
    }
    
    if ds_list_size(droplist) > 0 and choosed<=ds_list_size(droplist)-1 {line=ds_list_find_value(droplist,choosed); scr_droplist_fullline_food();}
    else {line = 'Choose...'; full_line = 'Choose...'};
    break;
    
    case 2://craft tool
    //choose a craft tool from inventory
    ds_list_clear(droplist);
    
    //exclude previusly choosen in ingredients
    var ing1='-';
    var ing2='-';
    var ing3='-';
    with obj_dropdown {
        if (index=7 or index=8 or index=9) {
            if ing1='-' {ing1=line; }
            else if ing2='-' {ing2=line; }
            else if ing3='-' {ing3=line; }
        }
    }
    
    //add hands by default + tool from your inventory 
    ds_list_add(droplist,main.tool_default);    
    for(var i=0; i<ds_list_size(main.inventory_list); i++) {
        var itm=ds_list_find_value(main.inventory_list,i);
        if main.item[3,itm]!=0 {
            var itm_num=floor(ds_list_find_value(main.inventory_num,i));
            log(string(itm)+', num= '+string(itm_num))
            if itm_num=1 and (main.item[0,itm]=ing1 or main.item[0,itm]=ing2 or main.item[0,itm]=ing3) {}
            else ds_list_add(droplist,main.item[0,itm]);
        }
    }
    
    //if choosed>ds_list_size(droplist)-1 choosed=ds_list_size(droplist)-1;
    //line=ds_list_find_value(droplist,choosed);
    if choosed<=ds_list_size(droplist)-1 {
        if choosed!=0 {
        if ds_list_find_value(droplist,choosed) != line {
            if ds_list_find_index(droplist,line)!=-1 {
                choosed=ds_list_find_index(droplist,line);
            } else choosed=0; 
        }
        }
    } else choosed=0;
    line=ds_list_find_value(droplist,choosed);
    full_line=line;
    scr_droplist_fullline_tool()
    break;

    case 3://gather  tool
    //choose a gather tool from inventory
    ds_list_clear(droplist);
    
    //add hands and axes (TODO - if it is presented in inventory)
    ds_list_add(droplist,main.tool_default);
    if ds_list_find_index(main.inventory_list,54)!=-1 ds_list_add(droplist,main.item[0,54]);
    if ds_list_find_index(main.inventory_list,58)!=-1 ds_list_add(droplist,main.item[0,58]);
       
    //if choosed>ds_list_size(droplist)-1 choosed=ds_list_size(droplist)-1;
    //line=ds_list_find_value(droplist,choosed);
    if choosed<=ds_list_size(droplist)-1 {
        if choosed!=0 {
        if ds_list_find_value(droplist,choosed) != line {
            if ds_list_find_index(droplist,line)!=-1 {
                choosed=ds_list_find_index(droplist,line);
            } else choosed=0; 
        }
        }
    } else choosed=0;
    line=ds_list_find_value(droplist,choosed);
    full_line=line;
    scr_droplist_fullline_tool()
    break;
    
    case 4://ingridient 1 num      
    case 5://ingridient 2 num     
    case 6://ingridient 3 num  
    scr_droplist_create_ingrnum();
    full_line=line;
    break;
    
    case 7://ingridient 1 - choose an ingridient
    scr_droplist_create_ingrtype();
    full_line=line;
    break;
    
    case 8://ingridient 2   
    scr_droplist_create_ingrtype();
    full_line=line;
    break;
    
    case 9://ingridient 3   
    scr_droplist_create_ingrtype();
    full_line=line;
    break;
    
    
    
    }

    

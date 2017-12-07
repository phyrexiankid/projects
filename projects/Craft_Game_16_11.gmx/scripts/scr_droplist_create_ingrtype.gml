///scr_droplist_create_ingrtype()

    ds_list_clear(droplist);
    for(var i=0; i<ds_list_size(main.inventory_list); i++) {
        ds_list_add(droplist,main.item[0,ds_list_find_value(main.inventory_list,i)]);
    }   
    
    //exclude previusly choosen
    var ing1='-';
    var ing2='-';
    var ing3='-';//craft tool
    with obj_dropdown {
        if (index=7 or index=8 or index=9) and id!=other {
            if ing1='-' ing1=line;
            else ing2=line;
        }
        if index=2 {
            ing3=line;
        }
    }
    if ds_list_find_index(droplist,ing1)!=-1 ds_list_delete(droplist,ds_list_find_index(droplist,ing1));
    if ds_list_find_index(droplist,ing2)!=-1 ds_list_delete(droplist,ds_list_find_index(droplist,ing2));
    if ds_list_find_index(droplist,ing3)!=-1 {
        //remove craft tool from list if remains only one
        var ind=ds_list_find_index(main.inventory_list,ds_list_find_index(main.item_list,ing3));
        if ind!=-1 ind=floor(ds_list_find_value(main.inventory_num,ind));
        if ind=1 ds_list_delete(droplist,ds_list_find_index(droplist,ing3));
    }
    //ds_list_add(droplist,'');
    ds_list_insert(droplist, 0, '');
    
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
    
    
        for(var i=0; i<2; i++) {//shift dropdowns below 
            with obj_dropdown {
                if index=7+i and line='' {
                    with obj_dropdown {
                        if index=7+i+1 and !inactive{
                            if line!='' {
                                ds_list_copy(other.droplist, droplist);
                                ds_list_clear(droplist);
                                other.choosed=choosed;
                                choosed=0;
                                other.target.line=target.line;
                                target.line=0;
                                other.line=line;
                                line='';
                            }
                            if index!=7 and other.line='' {inactive=1; target.inactive=1; alarm[0]=1; target.alarm[0]=1;}
                            other.target.full_line=other.target.line;
                            other.full_line=other.line;
                            target.full_line=target.line;
                            full_line=line;
                        }
                    }
                }
            }
        }
        
    if index!=9 and line!='' {
        with obj_dropdown {
            if index=other.index+1 and inactive=1 {
                inactive=0;
                target.inactive=0;
                alarm[0]=1;
                target.alarm[0]=1;
            }   
        }
    } 
    
    
    
    

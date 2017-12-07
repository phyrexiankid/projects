///scr_create_upgrade(num,num2)

    var up = instance_create(0,0,obj_upgrade_tab); 
    up.num=argument0;
    up.num2=argument1;
    up.x_shift = obj_shop.x;
    up.target=obj_shop;
    up.visible=0;
    with obj_shop_tab {
      if num=up.num {
        up.father=id;
        break;
      }
    }
    
    ds_list_add(obj_shop.child_list[2],up);
    
    up.y_shift = 270+270*ds_list_find_index(obj_shop.child_list[2], up);
    

    
    

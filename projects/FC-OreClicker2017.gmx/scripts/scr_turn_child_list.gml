///scr_turn_child_list(num)

  obj_shop.y=obj_shop.shop_pos[global.screen];
  for(var n=0;n<4;n++) {
    for(var i=0; i<ds_list_size(obj_shop.child_list[n]); i++) {
      if n=argument0 {
        instance_activate_object(ds_list_find_value(obj_shop.child_list[n],i));
        with ds_list_find_value(obj_shop.child_list[n],i) {
          visible=0; 
          //y=obj_shop.y+y_shift;
          if y>obj_shop.ymax and y<obj_shop.ymin visible=1;
          obj_shop.speed=1;
        }
      } else instance_deactivate_object(ds_list_find_value(obj_shop.child_list[n],i));
    }
  }
  
  


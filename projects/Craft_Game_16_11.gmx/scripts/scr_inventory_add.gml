///scr_inventory_add(index,amount)

var item_index=argument0;
var item_amount=argument1;

if ds_list_find_index(main.inventory_list,item_index)!=-1 {
    //there is an object of this type in inventory
    var pos=ds_list_find_index(main.inventory_list,item_index);
    if ds_list_find_value(main.inventory_num,pos)+item_amount < 1 {
        //remove item
        ds_list_delete(main.inventory_list,pos);
        ds_list_delete(main.inventory_num,pos);
    } else {
        //add more of this type
        var addd=main.item[3,item_index]/power(10,string_length(string(main.item[3,item_index])));
        if ds_list_find_value(main.inventory_num,pos) mod 1 !=0 addd=0;
        ds_list_replace(main.inventory_num,pos,ds_list_find_value(main.inventory_num,pos)+item_amount+addd);
    }
} else {
    
    //it is a new object: add it to the bottom
    if item_amount<1 exit;
    ds_list_add(main.inventory_list,item_index);
    ds_list_add(main.inventory_num,real(item_amount+main.item[3,item_index]/power(10,string_length(string(main.item[3,item_index]))))  );
}   



with obj_dropdown scr_droplist_create();





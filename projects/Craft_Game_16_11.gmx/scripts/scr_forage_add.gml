///scr_forage_add(item_name,amount)

//push new item to forage list
var item_name=argument0;
var item_num=argument1;

if instance_exists(obj_craft) { with obj_craft {

    if item_num!=-1 ds_list_add(main.forage_list,string(item_name)+' ('+string(item_num)+')');
    else ds_list_add(main.forage_list,string(item_name));
    
    //remove old itemif needed
    if ds_list_size(main.forage_list)>forage_max {
        do {
            ds_list_delete(main.forage_list,0);
        }
        until (ds_list_size(main.forage_list)<=forage_max);
    }

} }


//check for story message
if obj_story.condition[0]=0 and (item_name=main.item[0,1] or item_name=main.item[0,68]) {
    obj_story.condition[0]=1;
    //add message - tutorial message 1
    scr_message_add(1,1);
    //giving a quest 
    if obj_story.condition[8]=0 {
        obj_story.condition[8]=1;
        //add message - active quest 1
        scr_message_add(2,1);
    }
}

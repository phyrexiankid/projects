///scr_eat(food item index)

var itm=argument0;
var energy=0;

if ds_list_find_index(main.item_list,itm)!=-1 {
itm=ds_list_find_index(main.item_list,itm);

if main.item[2,itm]!=0 { //if it is a food

    energy=main.item[2,itm];
    scr_inventory_add(itm,-1);
    //if this food contains a container or something in it
    switch itm {
    case 34://90% chanse to spawn a coconut shell
    case 36: 
    case 37:
    case 38:
    case 39:
    case 48:
    case 49:
        var chns=random_range(0,100);
        if chns>=(100-90) {
            scr_inventory_add(67,1);
            scr_indicator('item',main.item[0,67],1);
        }
    break;
    }
}

//quest 1 and 2 progress
if obj_story.condition[8]=1 {//eat any food
    scr_quest_add(1,1,8); 
    //add message - story message 3
    scr_message_add(0,3);
}
if obj_story.condition[9]=1 and itm=1 scr_quest_add(2,1,9); //eat orange

}

return energy;






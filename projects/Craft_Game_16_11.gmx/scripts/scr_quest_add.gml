///scr_quest_add(quest,amount,condition)

var quest=argument0;
var amount=argument1;
var cond=argument2;

obj_story.quest[quest]+=amount;  

//quest completed!
if obj_story.quest[quest]>=obj_story.quest_target[quest] {
    obj_story.quest[quest]=obj_story.quest_target[quest];
    obj_story.condition[cond]=2;
    ds_list_delete(main.message_list[1],ds_list_find_index(main.message_list[1],quest));
    //add message and fire a notification
    scr_message_add(3,quest);
}



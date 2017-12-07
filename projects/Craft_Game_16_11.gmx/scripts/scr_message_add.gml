///scr_message_add(type,number)

//types:
//0 insert  -main.txt_story[0]-         to  -message_list[0]-
//1 insert  -main.txt_tutorial[0]+0.1-  to  -message_list[0]-
//2 insert  active quest
//3 insert  complete quest

var type=argument0;
var numb=argument1;

switch type {
case 0://story message
//if ds_list_find_index(main.message_list[0],numb)=-1 {
    ds_list_add(main.message_list[0],numb);
    scr_flashing_subtab(1,1);
    if main.tab[1,1].active=1 with obj_text_scroll alarm[0]=1;
//}
break;

case 1://tutorial message (to story subtab)
if ds_list_find_index(main.message_list[0],numb+.1)=-1 {
    ds_list_add(main.message_list[0],numb+.1);
    scr_flashing_subtab(1,1);
    if main.tab[1,1].active=1 with obj_text_scroll alarm[0]=1;
}
break;

case 2:
if ds_list_find_index(main.message_list[1],numb)=-1 {
    ds_list_add(main.message_list[1],numb);
    scr_flashing_subtab(1,2);
    if main.tab[1,2].active=1 with obj_text_scroll alarm[0]=1;
}
break;

case 3:
if ds_list_find_index(main.message_list[2],numb)=-1 {
    ds_list_add(main.message_list[2],numb);
    scr_flashing_subtab(1,3);
    //add collect reward button
    var button=instance_create(0,0,obj_button);
    button.index=6;
    button.sub_index=numb;
    ds_list_add(main.tab[1,3].child_list,button);
    ds_list_add(main.quest_buttons_list,button);
    if main.tab[1,3].active=1 with obj_text_scroll alarm[0]=1;
    else instance_deactivate_object(button);
}
break;
}

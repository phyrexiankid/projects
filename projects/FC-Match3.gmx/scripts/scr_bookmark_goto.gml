///scr_bookmark_goto(id)


with argument0 {

if state=0 and obj_controller_bookmark.bookmark_moves=0 {
     last_click=1
     with obj_bookmark {if id!=other.id last_click=0;}
     scr_open_bookmark(id);
}
else if state=0 and obj_controller_bookmark.bookmark_moves=1 {
    //если жмакнули, пока открывается что то другое
    //дать всему что не 0 и не это going_to_state 3
    last_click=1
    with obj_bookmark {
        if id!=other.id last_click=0;
        if id != other.id and state!=0 {
            going_to_state = 3;
        }
    }
    scr_open_bookmark(id);
}
else if state=3 {
    //если жмакнули, пока он закрывается, дать ему going_to_state 1
    last_click=1
    with obj_bookmark {if id!=other.id last_click=0;}
    going_to_state = 1;
} 

}

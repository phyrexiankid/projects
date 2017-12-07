///scr_open_bookmark_from_button(destination bookmark);
with obj_tip_pig {
    if state=1 or state=2 {
        scr_tip_close(1);
    }
}
var destination_bookmark=argument0;
if obj_controller_bookmark.page_moves=1 exit;

var bookmark_for_trigger = 1;
if destination_bookmark<=5 bookmark_for_trigger=global.bookmark_last_outer;
else bookmark_for_trigger = global.bookmark_current.bookmark_page;

//тригерим одну закладку (зачем?))
with obj_bookmark{
if bookmark_index=destination_bookmark {
    move_side=-1;
    shiftt=0;
    last_click=1
    alarm[1]=close_time;
}
}

global.bookmark_target = destination_bookmark;
with obj_bookmark_page {
    if bookmark_page = global.bookmark_target {
        scr_inner_outer(global.bookmark_current.inner_bookmark,inner_bookmark);
    } 
}

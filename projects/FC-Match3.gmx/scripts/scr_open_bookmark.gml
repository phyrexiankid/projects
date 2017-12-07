///scr_open_bookmark(mark)

with argument0 {

    stopped=0;
    move_side=-1;
    shiftt=0;
    state = 1; 
    alarm[1]=close_time;
    global.bookmark_target = bookmark_index;
    if obj_controller_bookmark.page_moves=0 {
    with obj_bookmark_page {
        if bookmark_page = global.bookmark_target {
            scr_inner_outer(global.bookmark_current.inner_bookmark,inner_bookmark);
        } 
    }
    } else {// ??? - если жмешь во время движения страниц, просто ненужная исчезает, а нужная появляется?
        if global.bookmark_level != 0 exit;//если это внутренняя, то даже не пытаемся чето делать
        with obj_bookmark_page {
            if bookmark_page = global.bookmark_target {
                x=global.bookmark_moved.x;
                t=global.bookmark_moved.t;
                stopped=global.bookmark_moved.stopped;
                shiftt=global.bookmark_moved.shiftt;
                move_side=global.bookmark_moved.move_side;
                alarm[1]=global.bookmark_moved.alarm[1];
                scr_bookmark_childs_anable(id)

                global.bookmark_moved.alarm[1]=-1;
                global.bookmark_moved.stopped=1;
                global.bookmark_moved.x=room_width/2+2048;
            }
        }
    }
    global.bookmark = bookmark_index;
    obj_controller_bookmark.bookmark_moves=1;
    
    with obj_bookmark {
        depth=-3-last_click;
        if state = 2 {
            stopped=0;
            move_side=1;
            shiftt=0;
            state = 3; 
            alarm[1]=close_time;
        }
    }
}



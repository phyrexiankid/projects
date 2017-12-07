///scr_add_for_gems_check()


if last_gems_for_add[0] = 0 { //мы тут первый раз
    last_gems_for_add[1]=0;
} else if date_is_today(last_gems_for_add[0]) {
    last_gems_for_add[1]=1;
} else {
    last_gems_for_add[1]=0;
}



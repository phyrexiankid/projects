///scr_check_text()

if Main.mobile=0 {
if visible=0 exit

//все таки сделать тут какой то скрипт
if !position_meeting(mouse_x, mouse_y, id) {
    if prev_string='' {line=start_line;color=placeholder_color}
    else {line=prev_string;color=text_color}
    focus = 0;
}

} else {
    if line=start_line or line='' {line=start_line;color=placeholder_color}
    else {color=text_color;}
}

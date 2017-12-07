///scr_back_from_inner()

if global.bookmark=10 {
with obj_bookmark_gifts {
if button_login!=0 {with button_login instance_destroy();
button_login=0;}
}
}
scr_open_bookmark_from_button(global.bookmark_last_outer);

///scr_fb_gifts()

var strt = 700;//805
for(var i=0; i<playing; i++) {     
    var xx=x;
    var yy=strt+233*i;
    var plash = instance_create(xx,yy,obj_bookmark_gifts_friend);
    plash.target=id;
    plash.x_shift=0;
    plash.y_shift=yy;
    plash.playing=1;
    ds_list_add(child_list,plash);
    with plash {
    invite_button = instance_create(x,y,obj_button);
    invite_button.index = 42;
    invite_button.target=other.id;
    invite_button.x_shift=x_shift+345;
    invite_button.y_shift=y_shift-10;
    invite_button.depth=0;
    ds_list_add(other.child_list,invite_button);
    }
    
    
}
//controller.friends_height[0]=strt+233*(playing-1)/*+150*/;

/*for(var i=0; i<not_playing; i++) {     
    var xx=x;
    var yy=strt+233*i;
    var plash = instance_create(xx,yy,obj_bookmark_gifts_friend);
    plash.target=id;
    plash.x_shift=0;
    plash.y_shift=yy;
    plash.playing=0;
    plash.visible=0;
    with plash {
    invite_button = instance_create(x,y,obj_button);
    invite_button.index = 42;
    invite_button.target=other.id;
    invite_button.x_shift=x_shift+345;
    invite_button.y_shift=y_shift-10;
    invite_button.depth=0;
    }
    ds_list_add(child_list,plash,plash.invite_button); //все это вносим в список детей
}
controller.friends_height[1]=strt+233*(not_playing-1)*/

bookmark_height=strt+233*(playing-1)/*+130*/;
bookmark_add_min=0;//-250;


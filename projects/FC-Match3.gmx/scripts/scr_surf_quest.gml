///scr_surf_quest(id)

var targett = argument0;

with targett {
surface_free(quest_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,quest_surf));
quest_surf = surface_create(1024,256);
ds_list_add(Main.surface_list,quest_surf);
surface_set_target(quest_surf);

var xx=1024/2-547;
var yy=256/2-171;

//картинки
draw_sprite(sp_quest_dots,0,xx+835,yy+171);//точки
if Main.quest_type[quest_index]!=-1 draw_sprite_ext(sp_hud_icon,4,xx+936,yy+141-24,0.8,0.8,0,noone,1);//кристал

//текст
draw_set_valign(fa_bottom);
draw_set_halign(fa_left);
if Main.language = 3 draw_set_font(font_34); //немецкий
else draw_set_font(font_42);
scr_draw_text_shadow(xx+64,yy+170-6,Main.quest_name[quest_index],3,cc_yellow,cc_shadow);//название
draw_set_valign(fa_top);
draw_set_halign(fa_left);
if Main.language = 3 draw_set_font(font_23);//немецкий
else draw_set_font(font_30);
scr_draw_text_shadow(xx+64,yy+184-10,Main.quest_description[quest_index],3,cc_white,cc_shadow);//описание

if Main.quest_type[quest_index]!=-1 {
    draw_set_valign(fa_middle);
    draw_set_halign(fa_left);
    draw_set_font(font_34);
    scr_draw_text_shadow(xx+974,yy+141-24,Main.quest_reward[quest_index],3,cc_white,cc_shadow);//награда

    if Main.quest_progress[quest_index]<Main.quest_target[quest_index] {//если недостаточно чегототам для квеста, рисуем сколько
        var collected=string(Main.quest_progress[quest_index])+string('/')+string(Main.quest_target[quest_index]);
        draw_set_valign(fa_middle);
        draw_set_halign(fa_center);
        draw_set_font(font_34);
        scr_draw_text_shadow(xx+980-20,yy+219+15,collected,3,cc_white,cc_shadow);//предметов собрано
    } else { //иначе делаем кнопку
        if reward_button=0 {
            reward_button=instance_create(xx+980-20,yy+219+3,obj_button);
            reward_button.index=43;
            reward_button.depth=-1;
            reward_button.target = id;
            reward_button.parent = id;
            reward_button.y_shift=186-(256/2);
            reward_button.x_shift=980-52-(1024/2);
            ds_list_add(target.child_list,reward_button);
        }
    }
}

surface_reset_target();
}

/*cc_white cc_green cc_shadow*/

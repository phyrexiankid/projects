///scr_surf_popup_watchad(id)
randomize();

var target = argument0;

with target {
    surface_free(menu_surf);
    menu_surf = surface_create(sursize,sursize);
    surface_set_target(menu_surf);
    //(sp_popup,0,0,790-height,990,height,sursize/2-495,sursize/2-sp_pause_head.height+93) //высота спрайта 790           
    draw_sprite_part(sp_popup,0,0,162,990,628,sursize/2-495,sursize/2-361+93);//высота спрайта 790
    draw_sprite(sp_pause_head,0,sursize/2,sursize/2-350);//361
    draw_sprite(sp_popup_character_plash,2,sursize/2,sursize/2-61); //персонаж
    var str1 = mtf.l_popup[pause_type,0];//13
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_font(font_42);
    scr_draw_text_shadow(sursize/2,sursize/2-350,str1,3,c_white,cc_shadow2);
    
    for(i=0;i<3;i++) {
    type[i]=real(string_char_at(string(pause_subtype),i+1));
    
    switch type[i] {
    case 0: //золото
    sprite[i]=sp_hud_icon;  image[i]=1; num[i]=Main.level_passed*20;
    break;
    case 1: //камни
    sprite[i]=sp_hud_icon;  image[i]=4; num[i]=5;
    break;
    case 2: //серебрянные ключи
    sprite[i]=sp_hud_icon;  image[i]=2; num[i]=3;
    break;
    case 3: //золотые ключи
    sprite[i]=sp_hud_icon;  image[i]=3; num[i]=2;
    break;
    case 4: //павер - грибы
    sprite[i]=sp_powerups;  image[i]=0; num[i]=choose(2,3,4);
    break;
    case 5: //павер - кресты
    sprite[i]=sp_powerups;  image[i]=1; num[i]=choose(2,3,4);
    break;
    case 6: //павер - мухи
    sprite[i]=sp_powerups;  image[i]=2; num[i]=choose(2,3,4);
    break;
    case 7: //павер - замедление
    sprite[i]=sp_powerups;  image[i]=3; num[i]=choose(2,3,4);
    break;
    case 8: //павер - заморозка
    sprite[i]=sp_powerups;  image[i]=4; num[i]=choose(2,3,4);
    break;
    }
    }
    
    //при первом создании выбираем нужный
    if random_info[0]=-1 {
        //var chz=choose(0,1,2);
        random_info[0]=type[0];
        random_info[1]=type[1];
        random_info[2]=type[2];
        random_info[3]=num[0];
        random_info[4]=num[1];
        random_info[5]=num[2];
    }
    
    draw_set_font(font_34);
    var zdv=265;
    draw_sprite(sprite[0],image[0],sursize/2-zdv,sursize/2-100);
    draw_sprite(sprite[1],image[1],sursize/2,    sursize/2-100);
    draw_sprite(sprite[2],image[2],sursize/2+zdv,sursize/2-100);
    scr_draw_text_shadow(sursize/2-zdv,sursize/2+5,string('x')+string(num[0]),3,c_white,cc_shadow2);
    scr_draw_text_shadow(sursize/2,    sursize/2+5,string('x')+string(num[1]),3,c_white,cc_shadow2);
    scr_draw_text_shadow(sursize/2+zdv,sursize/2+5,string('x')+string(num[2]),3,c_white,cc_shadow2);
    
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    draw_set_font(font_27);
    draw_sprite(sp_powerups,0,523+203*0,1917);
    draw_sprite(sp_powerups,1,523+203*1,1917);
    draw_sprite(sp_powerups,2,523+203*2,1917);
    draw_sprite(sp_powerups,3,523+203*3,1917);
    draw_sprite(sp_powerups,4,523+203*4,1917);
    draw_text(523+203*0,2005,Main.powerup_num[1]);
    draw_text(523+203*1,2005,Main.powerup_num[2]);
    draw_text(523+203*2,2005,Main.powerup_num[3]);
    draw_text(523+203*3,2005,Main.powerup_num[4]);
    draw_text(523+203*4,2005,Main.powerup_num[5]);
    surface_reset_target();
}






            


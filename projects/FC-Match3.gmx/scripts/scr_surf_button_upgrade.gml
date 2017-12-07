///scr_surf_button_upgrade(id,mode)

//mode 0: улучшить, нум будет сколько часов (меняется только цифра ведь?)
//mode 1: качается, надпись на кнопке будет открыть сейчас, нум - за сколько открыть
//mode 2: готово, нум не нужен, может быть любой

var targ   = argument0;
var mode   = argument1;
var numm   = 0;
var numm_type   = '';

with targ {

     if mode=0 {
        numm=target.upgrade_time;
        numm_type=string('');
        if (numm div 60)>=1 {numm_type+=string(floor(numm div 60))+mtf.l_other[0]}
        numm_type+=string(floor(numm mod 60))+mtf.l_other[1];
        
        /*if (numm div 60)>=1 {numm/=60; numm_type=' часов'; if numm mod 1 !=0 numm=string_format(numm,1,1);}
        else {numm_type=' минут';}*/
     }
else if mode=1 numm=target.upgrade_open_cost;

surface_free(text_surf);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,text_surf));
text_surf = surface_create(sur_w,sur_h);
ds_list_add(Main.surface_list,text_surf);
surface_set_target(text_surf);

switch mode {
case 0: //улучшить
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_font(font_30);
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_text(sur_w/2,sur_h/2+3,/*string(numm)+*/string(numm_type));
draw_set_valign(fa_top);
draw_set_font(font);
draw_set_alpha(1);
scr_draw_text_shadow(sur_w/2,sur_h/2-4,line,shift,color,shadow);
break;

case 1: //качается
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);
draw_set_font(font_30);
draw_set_color(c_black);
draw_set_alpha(0.75);
draw_text(sur_w/2,sur_h/2,mtf.l_button[index,3]);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(font);
draw_set_alpha(1);
var leng = (string_width(string(numm))+56+8)/2;
draw_sprite_ext(sp_icons,0,sur_w/2+leng-32,sur_h/2+27,0.8,0.8,0,noone,1);
scr_draw_text_shadow(sur_w/2-leng,sur_h/2,numm,shift,color,shadow);
break;

case 2: //готово
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(font);
scr_draw_text_shadow(sur_w/2,sur_h/2,mtf.l_button[index,4],shift,color,shadow);
break;
}
surface_reset_target();
}



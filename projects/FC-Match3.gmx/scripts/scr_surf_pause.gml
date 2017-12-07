///scr_surf_pause(id)

var target = argument0;

with target {
draw_enable_alphablend(false);

surface_free(noblur_surf);
surface_free(blur_surf);
surface_free(surf_factor);
surface_free(surf_post_blur);
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,noblur_surf));
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,blur_surf));
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,surf_factor));
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,surf_post_blur));
/*noblur_surf = surface_create(view_wview[0],view_hview[0]);
blur_surf = surface_create(view_wview[0],view_hview[0]);
surf_factor  = surface_create(view_wview[0],view_hview[0]);
surf_post_blur = surface_create(view_wview[0],view_hview[0]);*/
noblur_surf = surface_create(wid,hei);
blur_surf = surface_create(wid,hei);
surf_factor  = surface_create(wid,hei);
surf_post_blur = surface_create(wid,hei);
shft = (1875-view_wview[0])/2;
ds_list_add(Main.surface_list,noblur_surf);
ds_list_add(Main.surface_list,blur_surf);
ds_list_add(Main.surface_list,surf_factor);
ds_list_add(Main.surface_list,surf_post_blur);

if Main.shader_supported=1 {
uni_blur_range_h=shader_get_uniform(shd_blur_hor, "blur_range");
uni_blur_range_v=shader_get_uniform(shd_blur_ver, "blur_range");
sample_factor_h=shader_get_sampler_index(shd_blur_hor,"surface_factor");
sample_factor_v=shader_get_sampler_index(shd_blur_ver,"surface_factor");
mpx=0;
mpy=0;

//рисуем только красную штуку - область размытия (тут-весь экран)
surface_set_target(surf_factor);
draw_set_blend_mode(bm_add)
draw_rectangle_colour(0,0,view_wview[0],view_hview[0],c_red,c_red,c_red,c_red,0)
draw_set_blend_mode(bm_normal)
surface_reset_target();
}

/*sssurf = surface_create(view_wview[0], view_hview[0]);
view_surface_id[view_current] = sssurf;*/
//surface_copy(blur_surf,0,0,view_surface_id[view_current]/*application_surface*/);
log('surf exists = '+string(surface_exists(view_surface_id[view_current])));
if surface_exists(view_surface_id[view_current]) {
  surface_set_target(blur_surf);
  //draw_background(background_index[0],-shft,0);
  //surface_resize(view_surface_id[view_current], 1024, 1024);
  surface_copy(blur_surf,0,0,view_surface_id[view_current]/*application_surface*/);
  surface_reset_target();
  //surface_resize(blur_surf, 1024, 1024);
}
view_surface_id[view_current]=-1;

//копируем текущую неразмытую текстуру в отдельный сюрфейс
surface_set_target(noblur_surf)
draw_surface(blur_surf,0,0)
surface_reset_target()


if Main.shader_supported=1 {
//Main.custom=string(shaders_are_supported())+' - '+string(shader_is_compiled(shd_blur_ver));
//размываем туда-сюда горизонтально и вертикально
if Main.nexus_device=1 or pause_type=15 or pause_type=17 {
    //ЧБ шейдер
    surface_set_target(blur_surf)
    draw_clear_alpha(c_black,0.75)
    shader_set(shd_bw)
    draw_surface(noblur_surf,0,0)
    shader_reset()
    surface_reset_target()
} 
if Main.nexus_device=0 {
    //размытие
    //Main.custom = string(shader_is_compiled(shd_bw))+string(' - ')+string(shader_is_compiled(shd_blur_ver));
    surface_set_target(surf_post_blur);
    draw_clear_alpha(c_black,0.75);
    shader_set(shd_blur_ver);
    texture_set_stage(sample_factor_v,surface_get_texture(surf_factor));
    shader_set_uniform_f(uni_blur_range_v,blur_range);
    draw_surface(blur_surf,0,0);
    shader_reset();
    surface_reset_target();

    surface_set_target(blur_surf)
    draw_clear_alpha(c_black,0.75)
    shader_set(shd_blur_hor)
    texture_set_stage(sample_factor_h, surface_get_texture(surf_factor))
    shader_set_uniform_f(uni_blur_range_h,blur_range*2);
    draw_surface(surf_post_blur,0,0)
    shader_reset()
    surface_reset_target()
}
}

/*if pause_type = 2 { // сюрфейс предметов если просер
//surface_free(global.loose_surf);
global.loose_surf = surface_create(1024,256);

draw_enable_alphablend(true);
surface_set_target(global.loose_surf);
with obj_controller_gameplay {
//если это завал миссии, тут же рисуем недособранные вещи
if obj_blur.pause_type = 2 {
scr_surf_fail_items(id);
}
}
surface_reset_target();
//menu.lose_item=global.loose_surf;
}*/

//если надо, помечаем вещи которые не будут деактивироваться (сделать свитч)
var topmenu = 0;
if instance_exists(obj_hud) topmenu = 1;
//деактивируем всё, потом врубаем что пометили
instance_deactivate_all(1);
if topmenu = 1 {instance_activate_object(obj_hud); }
//ну эти всегда должны быть активны
instance_activate_object(mtf);
instance_activate_object(Main);

//выпиливаем лишние сюрфейсы
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,surf_factor));
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,surf_post_blur));
ds_list_delete(Main.surface_list,ds_list_find_index(Main.surface_list,sssurf));
surface_free(sssurf);
surface_free(surf_factor);
surface_free(surf_post_blur);

draw_enable_alphablend(true);
}

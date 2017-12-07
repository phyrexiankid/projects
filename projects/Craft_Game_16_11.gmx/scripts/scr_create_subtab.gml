///scr_create_subtab(num)

var num=argument0;
var subtab_width=170;

for(var i=0;i<num;i++) {
    var stab=instance_create(main.left_border+12+(subtab_width*i)+subtab_width/2,6+main.subtab_height/2,obj_subtab);
    stab.image_xscale=(subtab_width/2)-4;
    stab.image_yscale=(main.subtab_height)/2;
    stab.index=i+1;
    stab.image_blend=main.color_dkblue;
    stab.father=id;
    //ds_list_add(child_list,tab);
    main.tab[index,i+1]=stab;
}

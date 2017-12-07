///scr_create_recipe_string(recipe list, craft tool)

var recipe_list=argument0;
var tool=argument1;

//so we need to turn this
//   [6007, [26], skill[4], 900, 6, [25,24,24,24,24] ]
//into this -
//   [Ingredient 1] + [Ingredient 2, if applicable] + [Ingredient 3, if applicable]
//   "using" [Craft tool] "makes" [Product(s)].

var str='';
var ingr_map=ds_map_create();
var product_map=ds_map_create();

//turn '0,1,1' to 'Orange + 2 Bananas' (for the ingredients)
for(var i=0;i<ds_list_size(ds_list_find_value(recipe_list,1));i++) {
    var v=ds_list_find_value(ds_list_find_value(recipe_list,1),i);
    if !is_undefined(ds_map_find_value(ingr_map,v)) {
        ds_map_replace(ingr_map,v,ds_map_find_value(ingr_map,v)+1);
    } else {
        ds_map_add(ingr_map,v,1);
    }
}
var fst=ds_map_find_first(ingr_map);
for(var i=0;i<ds_map_size(ingr_map);i++) {
    if ds_map_find_value(ingr_map,fst)>1 {str+=string(ds_map_find_value(ingr_map,fst)); str+=' ';}//add number if needed
    str+=string(main.item[0,fst]);//add ingredient name
    if i<(ds_map_size(ingr_map)-1) {fst=ds_map_find_next(ingr_map,fst); str+=' + ';}
}   

str+=' using ';
str+=string(tool);
str+=' makes ';

//turn '0,1,1,2' to 'Orange, 2 Bananas and 17 Coconut' (for the products)
for(var i=0;i<ds_list_size(ds_list_find_value(recipe_list,5));i++) {
    var v=ds_list_find_value(ds_list_find_value(recipe_list,5),i);
    if !is_undefined(ds_map_find_value(product_map,v)) {
        ds_map_replace(product_map,v,ds_map_find_value(product_map,v)+1);
    } else {
        ds_map_add(product_map,v,1);
    }
}
var fst=ds_map_find_first(product_map);
for(var i=0;i<ds_map_size(product_map);i++) {
    if ds_map_find_value(product_map,fst)>1 {str+=string(ds_map_find_value(product_map,fst)); str+=' ';}//add number if needed
    str+=string(main.item[0,fst]);//add ingredient name
    if i<ds_map_size(product_map)-2 {fst=ds_map_find_next(product_map,fst); str+=', ';}
    else if i=ds_map_size(product_map)-2 {fst=ds_map_find_next(product_map,fst); str+=' and ';}
}  
ds_map_destroy(product_map);
ds_map_destroy(ingr_map);

str+='.';

return str;





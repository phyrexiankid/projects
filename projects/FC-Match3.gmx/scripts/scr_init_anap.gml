///scr_init_anap();
//if achievement_login_status() {
log('achievement login ON');
var map_create = true;
if file_exists("iap_data.json") { //если файл существует, то мы его загружаем
    global.purchaseMap = ds_map_secure_load("iap_data.json");
    if ds_exists(global.purchaseMap, ds_type_map){
        var product = "feedthepig_starter";
        if ds_map_exists(global.purchaseMap, product) {
            map_create = false; //это чтобы код ниже не сработал, так как он нам не нужен в таком случае. Проверками не пренебрегайте.
            global.purchaseMap = ds_map_secure_load("iap_data.json");
            //первая из двух проверок, что стартер не надо создавать
            Main.starter_pack[0] = global.purchaseMap[? "feedthepig_starter"]; 
            //дальше идет первый автоматический сейв в мейне
        }
        //В гайде у ЁЁ тут немного другой код, можете воспользовать отключением рекламы, как у них, или сделать проще,
        //сохраняя все данные в .ини файл
    }
}

if map_create {//если файла нет, значит, нет и мапы, мы задаем параметры покупок и сохраняем его в файл, тем самым, создавая его.
    global.purchaseMap = ds_map_create();

    var product1 = "feedthepig_starter";

    ds_map_add(global.purchaseMap, product1, 0); //0 значит покупки не было
    ds_map_secure_save(global.purchaseMap, "iap_data.json"); //сохранение
}


//делаем карты для каждого отдельного товара
var product_list = ds_list_create();
starter = ds_map_create();
gems_1 = ds_map_create();
gems_2 = ds_map_create();
gems_3 = ds_map_create();
gems_4 = ds_map_create();
gems_5 = ds_map_create();
gems_6 = ds_map_create();

//товар, который покупается один раз
ds_map_add(starter, "id",    Main.inap_index[0]);
ds_map_add(starter, "title", string(mtf.l_other[8])+string("!"));
ds_map_add(starter, "type",  "Consumable"); 

//товар, который тратится
ds_map_add(gems_1, "id",    Main.inap_index[1]);
ds_map_add(gems_1, "title", string(Main.inap_value[1])+string(" Gems!"));
ds_map_add(gems_1, "type",  "Durable"); 

ds_map_add(gems_2, "id",    Main.inap_index[2]);
ds_map_add(gems_2, "title", string(Main.inap_value[2])+string(" Gems!"));
ds_map_add(gems_2, "type",  "Durable"); 

ds_map_add(gems_3, "id",    Main.inap_index[3]);
ds_map_add(gems_3, "title", string(Main.inap_value[3])+string(" Gems!"));
ds_map_add(gems_3, "type",  "Durable"); 

ds_map_add(gems_4, "id",    Main.inap_index[4]);
ds_map_add(gems_4, "title", string(Main.inap_value[4])+string(" Gems!"));
ds_map_add(gems_4, "type",  "Durable"); 

ds_map_add(gems_5, "id",    Main.inap_index[5]);
ds_map_add(gems_5, "title", string(Main.inap_value[5])+string(" Gems!"));
ds_map_add(gems_5, "type",  "Durable"); 

ds_map_add(gems_6, "id",    Main.inap_index[6]);
ds_map_add(gems_6, "title", string(Main.inap_value[6])+string(" Gems!"));
ds_map_add(gems_6, "type",  "Durable"); 

ds_list_add(product_list,starter,gems_1,gems_2,gems_3,gems_4,gems_5,gems_6);
iap_activate(product_list);

ds_map_destroy(starter);
ds_map_destroy(gems_1);
ds_map_destroy(gems_2);
ds_map_destroy(gems_3);
ds_map_destroy(gems_4);
ds_map_destroy(gems_5);
ds_map_destroy(gems_6);
ds_list_destroy(product_list);
/*} else {
    log('achievement login OFF');
}*/

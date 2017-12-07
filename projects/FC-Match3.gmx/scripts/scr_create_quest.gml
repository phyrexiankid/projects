///scr_create_quest(num)
    var num=argument0;
    randomize();
    var type=choose(9,10,13,14);//15ый спрятан в сундуках для редкости
    if num=2 and type=Main.quest_type[1] {
        do {
            type=choose(9,10,13,14);
        } until type!=Main.quest_type[1];
    } else if num=1 and type=Main.quest_type[2] {
        do {
            type=choose(9,10,13,14);
        } until type!=Main.quest_type[2];
    }
    
    if type=9 {//если предмет то какой
        //добавляем те что есть
        var types_list_sublist = ds_list_create();
        for(var i=0; i<Main.eat_available; i++) {
            ds_list_add(types_list_sublist,Main.e_t_a[i+1]);
        }
        ds_list_shuffle(types_list_sublist);//шафлим
        type=ds_list_find_value(types_list_sublist,0);//берем первый
        ds_list_destroy(types_list_sublist);//лист больше нааахер не нужен
    }
    else if type=13 type=choose(11,11,11,11,12,12,13,15);//если сундук то какой
    
    Main.quest_type[num]=type;//сохраним тип пока не начали менять
    //считаем сколько надо собрать
    var tgt=0;
    if type<=9 tgt=9;
    else {tgt = type;}
    var minn = mtf.l_quest[tgt,3];//мин
    var maxx = mtf.l_quest[tgt,4];//макс
    var tgt1=0;//теперь это то что ищем
    var rwrd=0;
    if Main.level_passed<100 {//сначала максимум половина
        tgt1=ceil(random_range(minn-0.99,minn+floor((maxx-minn)/2)));
    } else {//после сотого тут любое число
        tgt1=ceil(random_range(minn-0.99,maxx));
    }
    rwrd=round(mtf.l_quest[tgt,5]/mtf.l_quest[tgt,4]*tgt1);
    
    Main.quest_reward[num]=rwrd;
    Main.quest_progress[num]=0;
    Main.quest_target[num]=tgt1;
    Main.quest_name[num]=l_quest[Main.quest_type[num],0];
    Main.quest_description[num]=string(mtf.l_quest[Main.quest_type[num],1])+string(Main.quest_target[num])+string(mtf.l_quest[Main.quest_type[num],2]);
    scr_save();

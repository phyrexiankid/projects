///scr_create_daily_quest()
    randomize();
    var type=choose(9,10,13,14);
    
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
    else if type=13 type=choose(11,11,11,11,12,12,13);//если сундук то какой
    
    Main.quest_type[0]=type;//сохраним тип пока не начали менять
    //считаем сколько надо собрать
    var tgt=9;
    if type<=9 tgt=9;
    else tgt = type;
    var minn = mtf.l_quest_daily[tgt,3];//мин
    var maxx = mtf.l_quest_daily[tgt,4];//макс
    var tgt1=0;//теперь это то что ищем
    var rwrd=0;
    if Main.level_passed<100 {//сначала максимум половина
        tgt1=ceil(random_range(minn-0.99,minn+floor((maxx-minn)/2)));
    } else {//после сотого тут любое число
        tgt1=ceil(random_range(minn-0.99,maxx));
    }
    rwrd=round(mtf.l_quest_daily[tgt,5]/mtf.l_quest_daily[tgt,4]*tgt1);
    
    Main.quest_reward[0]=rwrd;
    Main.quest_progress[0]=0;
    Main.quest_target[0]=tgt1;
    Main.quest_name[0]=mtf.l_quest_daily[Main.quest_type[0],0];
    Main.quest_description[0]=string(mtf.l_quest_daily[Main.quest_type[0],1])+string(Main.quest_target[0])+string(mtf.l_quest_daily[Main.quest_type[0],2]);
    Main.quest_daily_start=date_get_day_of_year(date_current_datetime());//цифра дня в году, 1-366
    scr_save();

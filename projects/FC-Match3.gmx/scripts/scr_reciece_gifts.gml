///scr_reciece_gifts(mode)

var mode=argument0;

//gift
// можно получить "первичные" подарки, на которые мы отправляем в ответ, и эти ответные. 
// мы не показываем игроку, кто прислал, только общее количество (но делаем список тех,
// кто прислал, по айдишникам, в мейне. он очищается при закрытии поп апа.) 
// аппреквесты после этого сразу удаляются.
// в попапе делаем 2 кнопки - забрать и отправить ответные подарки, и просто забрать.
// забрать показываем только если все ответные. по нажатии одновременно 
// собираются ключи, отправляются ответные и все закрывается?
if !ds_map_empty(gifts_map) and ds_map_exists(gifts_map, "data") { 
    gifts_checked=1;
    if ds_list_empty(ds_map_find_value(gifts_map, "data")) {
        //no new requests, exit
        exit;
    }
    
    var requests_list = ds_map_find_value(gifts_map, "data");             // ds_list
    with Main {
        fb_request_list = ds_list_create();
        fb_request_type_list = ds_list_create()
        ds_list_empty(fb_request_list);
        ds_list_empty(fb_request_type_list);
    }
    
    //смотрим по списку, че там навалило
    for(var i=0;i<ds_list_size(requests_list);i++) {
      var current_request_map = ds_list_find_value(requests_list,i);      // ds_map
      var request_msg=ds_map_find_value(current_request_map, "message");  // straight value
      if request_msg='Here is a gift for you!' {
        //если сообщение то, вносим его в список у мейна
        var request_data=ds_map_find_value(current_request_map, "data");  // straight value
        ds_list_add(Main.fb_request_list,request_data);
        ds_list_add(Main.fb_request_type_list,0);      // 0 - первичный, 1 - ответный
      } else if request_msg='Here is my gift back!' {
        //если сообщение то, вносим его в список у мейна
        var request_data=ds_map_find_value(current_request_map, "data");  // straight value
        ds_list_add(Main.fb_request_list,request_data);
        ds_list_add(Main.fb_request_type_list,1);      // 0 - первичный, 1 - ответный      
      }
      //потом при любом раскладе ломаем запрос
      var request_id=ds_map_find_value(current_request_map, "id");        // straight value
      facebook_graph_request(request_id, "DELETE", -1, -1);
      ds_map_destroy(current_request_map);
    }
    //destroy maps, free memory
    ds_list_destroy(requests_list);
    ds_map_destroy(gifts_map);
    
    //если список не пуст, запускаем попап, а иначе просто выходим 
    if ds_list_size(Main.fb_request_list) != 0 {
      //если все ответные - показываем 14.1, иначе 14.0
      var resp=0;
      if ds_list_find_index(Main.fb_request_type_list,0)=-1 resp=1;
      scr_show_bluring_menu(14,resp);
    } else {
      ds_list_destroy(Main.fb_request_list);
      ds_list_destroy(Main.fb_request_type_list);
      exit;
    }

} else {
    //no connection or graphresponse still not populated
    gifts_check+=1;
    if gifts_check<6 scr_fb_check_gifts(mode);
}

/*
ПОЛУЧЕНИЕ
gifts_map = ds_map_create();
//recieve lifes and life reqests
facebook_graph_request(string(facebook_user_id())+"/apprequests", "GET", -1, gifts_map);
alarm[4] = room_speed*3;
             
ОТПРАВКА ПЕРВИЧНОГО                                           
var str = string("method=POST&action_type=send&object_id=891449167556916&message=Here is a gift for you!&data="+facebook_user_id()+"&title=Ask for life!&access_token=251484648699009|ZC6uFCPFmnhtHVgUnotWmr76VDI");
http_post_string(string("https://graph.facebook.com/"+argument0+"/apprequests"), str)

ОТПРАВКА В ОТВЕТ
var str = string("method=POST&action_type=send&object_id=891449167556916&message=Here is my gift back!&data="+facebook_user_id()+"&title=Ask for life!&access_token=251484648699009|ZC6uFCPFmnhtHVgUnotWmr76VDI");
http_post_string(string("https://graph.facebook.com/"+argument0+"/apprequests"), str)

*/

//DELETE THIS REQUEST?
//facebook_graph_request(string(request_id), "DELETE", -1, -1);
//https://graph.facebook.com/[{REQUEST_OBJECT_ID}_{USER_ID}]?access_token
/*{
  "data": [
    {
      "application": {
        ........
      },
      "created_time": "2017-08-11T14:37:35+0000",
      "data": "507481669591751",
      "message": "'hey tis is da tist'",
      "to": {
        "name": "Zuek Zuekson",
        "id": "202516373614710"
      },
      "id": "161155461102350_202516373614710"
    },
  ],
  "paging": {
    "cursors": {
      "before": "MTYxMTU1NDYxMTAyMzUwOjEwMDAxNTY5MDQ2NDMyOAZDZD",
      "after": "MTc2ODA1MzQ2NjU1Njc1MDoxMDAwMTU2OTA0NjQzMjgZD"
    }
  }
}
*/

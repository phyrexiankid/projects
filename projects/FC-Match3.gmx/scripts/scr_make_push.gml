///scr_make_push(datatime to open)

var open_datatime = argument0;
    Main.next_push=open_datatime;
    scr_save();

  //выпиливаем старую нотификацию
  var old_map=ds_map_create();
  var old_notif=push_get_first_local_notification(old_map);
  if old_notif=-1 {}//нету никакой запланированной нотификации
  else{ //есть такая нотификация, выпилить ее
    push_cancel_local_notification(old_notif);
  }
  ds_map_destroy(old_map);
  
  //ставим новую нотификацию
  push_local_notification(open_datatime,'Feed the Pig',mtf.l_other[5],'sassss');
  log('new push is ready');

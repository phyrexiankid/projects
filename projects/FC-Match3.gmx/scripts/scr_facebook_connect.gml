///scr_facebook_connect()

  facebook_logout();

  var permissions = ds_list_create();
  ds_list_add(permissions,"public_profile", "user_friends");
  facebook_login(permissions, fb_login_default);
  ds_list_destroy(permissions);

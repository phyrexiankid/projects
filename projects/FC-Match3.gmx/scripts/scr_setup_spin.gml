///scr_setup_spin()

if instance_exists(obj_spinner_arrow) {
with obj_spinner_arrow {
//spin_speed=60;
obj_spinner.lst_spn=other.mode;
if spin = 0 {//mode
    if other.mode=0 {//обычный
        scr_spin();
    } else if other.mode=1 {//за деньги
        if obj_spinner.gemspin_cost<=Main.gems {
            Main.gems-=obj_spinner.gemspin_cost;
            scr_spin();
        }
    } else if other.mode=2 {//за рекламу
        log(string('V4VC ')+string(AdColony_V4VCAvailable()));
        log(string('VIDEO ')+string(AdColony_VideoAvailable()));
        //AdColony_ShowVideoForV4VC
        if AdColony_VideoAvailable() {
            Main.ad_place=1;
            with Main AdColony_ShowVideo(Main.ZoneId);
            GoogleAnalytics_SendEventExt('Gameplay','Watching add','Free spin for add',1);
        } else {
            Main.ad_place=1;
            with Main {GoogleMobileAds_ShowInterstitial(); alarm[5]=room_speed*5;}
        }
        //scr_spin();
    }
}
}
}

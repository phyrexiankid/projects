///scr_upgrade_done()

level+=1;

Main.upgrade[upgrade_index,0]=level;
//аналитика - апгрейд прокачен
GoogleAnalytics_SendEventExt('Upgrades','Upgrade complete',title,level);

scr_save();

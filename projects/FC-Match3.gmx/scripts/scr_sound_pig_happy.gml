///scr_sound_pig_happy(items collected)

var happy = argument0;

if happy >=3 and happy <6 {
    var snd=choose(snd_pig_gameplay_neutral5,snd_pig_gameplay_neutral5,snd_pig_gameplay_neutral5,snd_pig_gameplay_good2);
    var chns=choose(0,0,0,0,0,1,0);
} else if happy >=6 and happy <9 {
    var snd=choose('aaa',snd_pig_gameplay_neutral5,snd_pig_gameplay_good2,snd_pig_gameplay_good5);
    var chns=choose(0,0,0,0,0,1);
} else if happy >=9 and happy <12 {
    var snd=choose('aaa',snd_pig_gameplay_good3,snd_pig_tip_out1,snd_pig_gameplay_good5);
    var chns=choose(0,0,0,0,1);
} else if happy >=12 {
    var snd=choose('aaa',snd_pig_tip_out1,snd_pig_gameplay_good5);
    var chns=choose(0,0,0,1);
}
if snd='aaa' snd=choose(snd_pig_gameplay_aaa2,snd_pig_gameplay_aaa4);



if chns=1 {
    var pitch=random_range(0.95,1.1);
    var gn=choose(0.8,0.9,1);
    scr_sound_pig(snd,pitch,gn);
}

///scr_level_difficulty(level_number)

var level_num = argument0;
/*var df=(level_num mod Main.difficulty_wave);
if df=0 df=1;

//считаем сложность этогоуровня по волне
var cur = Main.difficulty_wave/(Main.max_dif-Main.min_dif);
cur = Main.min_dif+(df)/round(cur);

//пытаемся умножить время на сложность
var maybe_time = main_time/cur;
if maybe_time > 10 {main_time=ceil(maybe_time);}//получилось, отваливаем
else {main_items=ceil(main_items*cur)}//слишком мало было бы времени, умножаем предметы
*/
///////////////////////////////////////////////

var df = level_num / Main.difficulty_wave;
df= df mod 1;
var ddf=df;
if df=0 df=1;

//log('df='+string(ddf));
//считаем сложность этого уровня по волне
var cur = (Main.min_dif+df)*(Main.max_dif-Main.min_dif);

//пытаемся умножить время на сложность
var maybe_time = main_time/cur;
if main_time > 10 {main_time=ceil(maybe_time);}//получилось, отваливаем
else {main_items=ceil(main_items*cur)}//слишком мало было бы времени, умножаем предметы

//log('cur='+string(cur)+' main_time='+string(main_time)+' level_num='+string(level_num) +' wave'+string(Main.difficulty_wave));

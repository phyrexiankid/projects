///scr_upgrade_time(cost)

//возвращает время в минутах

var cost=argument0;
var time=0;

if cost<ds_list_find_value(Main.upgr_list_price,0) time=ds_list_find_value(Main.upgr_list_time,0);
else if cost>ds_list_find_value(Main.upgr_list_price,ds_list_size(Main.upgr_list_price)-1) time=ds_list_find_value(Main.upgr_list_time,ds_list_size(Main.upgr_list_time)-1);
else {
    var prev=0;
    var curr=0;
    for(var i=0;i<ds_list_size(Main.upgr_list_price);i++) {
        curr=ds_list_find_value(Main.upgr_list_price,i);
        if cost>=prev and cost<=curr {time=ds_list_find_value(Main.upgr_list_time,i); break;}
        prev=curr;
    }
}



return max(time/2,min(time-Main.upgrade[9,0],ceil(time-(time/50*Main.upgrade[9,0]))));//может половина тайма?



//return ceil(time-(time/2/50*Main.upgrade[9,0]));

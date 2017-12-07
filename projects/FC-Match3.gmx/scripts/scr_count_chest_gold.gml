///scr_count_chest_gold()

//итого золото в сундуке

var spd=Main.chest_basicdrop[0];
for(i=0;i<Main.upgrade[7,0];i++){
spd+=(i+1)*Main.upgrade[7,4];
}

return round(spd);

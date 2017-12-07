///scr_count_spinner_gold()

//итого золото в спинере

var spd=Main.spinner_basicdrop[0];
for(i=0;i<Main.upgrade[4,0];i++){
spd+=(i+1)*Main.upgrade[4,4];
}

return floor(spd);

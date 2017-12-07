///scr_upgrade_cost()

cost_1=0;
cost_2=0;
//посчитали общую цену
/*for(i=0;i<Main.upgrade[upgrade_index,0];i++){
cost_1+=(i+1)*Main.upgrade[upgrade_index,2];
}*/

//обычная цена этого апгрейда
cost_1=((Main.upgrade[upgrade_index,0]+1)*Main.upgrade[upgrade_index,2]);
//с учетом удорожания
cost_1+= cost_1/100*(100/(Main.upgrade[upgrade_index,2])*Main.upgrade[upgrade_index,0]);
//с учетом удешевления
//cost_1=ceil(cost_1-(cost_1/2/Main.upgrade[8,1]*Main.upgrade[8,0]));
cost_1=max(cost_1/2,min(cost_1-Main.upgrade[8,0],ceil(cost_1-(cost_1/Main.upgrade[8,1]*Main.upgrade[8,0]))));//может половина тайма?

cost_2=ceil(cost_1/50);

//специальные случаи - только за кристалы
//второй спин
switch upgrade_index {
case 3:
if level=1 { //если сейчас первый, то второй за гемы
var cst=200;
cost_2=ceil(cst-(cst/2/Main.upgrade[8,1]*Main.upgrade[8,0]));
}
break;
}

scr_save();


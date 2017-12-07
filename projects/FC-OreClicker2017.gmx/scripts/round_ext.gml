//argument0 - число
//argument1 - количество разрядов после запятой. Если равен 0, то функция аналогична round
  //если меньше нуля, то округление целых (-1 до десятков, -2 до сотен и т.д.)
var pow;
pow=power(10,argument1);
return round(argument0*pow)/pow;

///scr_inap_get_currency(currency name)

var pre_currency = argument0;
var currency = '';

switch pre_currency {

case 'USD':
pre_currency='$'; 
break;
/*case 'EUR':
currency='€';
break;
case 'GBP':
currency='£'; 
break;*/
case 'RUB':
//pre_currency='руб.';   
pre_currency='';
currency=''; 
break;
/*case 'JPY':
currency='¥'; 
break;*/

}


Main.inap_currency_name_pre=pre_currency;
Main.inap_currency_name=currency;
log('inap currency added - '+string(Main.inap_currency_name_pre)+string(Main.inap_currency_name));


/*BOB
BRL
CLP  
MXN
SGD
NZD
CAD
HKD 
AUD
DZD 
BDT
BGN 
HUF 
VND 
GHS  
DKK 
EGP 
ILS 
INR 
IDR    
KZT 
QAR 
KES  
COP 
CRC  
LBP  
CHF 
MOP 
MYR 
MAD  
NGN   
NOK 
AED 
PKR 
PEN 
PLN  
KRW 
RON 
SAR   
THB 
TWD 
TZS 
TRY 
UAH 
PHP   
HRK 
CZK  
CHF 
SEK  
LKR   
ZAR */

///scr_save_ini(section,key,value)

var sect  = argument0;
var key   = argument1;
var value = argument2;


ini_open('datatime.ini');
 
ini_write_real(sect,key,value) 

ini_close(); 


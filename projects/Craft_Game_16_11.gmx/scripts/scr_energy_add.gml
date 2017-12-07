///scr_energy_add(craft or gather (0/1),amount);

var type  =argument0;
var amount=argument1;

if type=0 {
main.craft_energy+=amount;
} else {
main.gather_energy+=amount;
}
 

main.craft_energy=clamp(main.craft_energy,-100,100);
main.gather_energy=clamp(main.gather_energy,-100,100);

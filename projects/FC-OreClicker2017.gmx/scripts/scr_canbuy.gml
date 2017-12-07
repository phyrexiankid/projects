///scr_canbuy()

if obj_controller.ore >= ore_type{
    if global.ore_count/global.costmod >= totalcost{
        return 1;
    } else return 0;
} else return 0;

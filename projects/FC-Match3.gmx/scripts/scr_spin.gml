///scr_spin();

with obj_spinner_arrow {
randomize();
        shift_time=(random_range(27,33)*random_range(5,6.5))*(2/global.spd);
        alarm[0]=shift_time;
        spin=1;
        with obj_button {
            if index=21 or index=22 {
                image_blend=c_gray;
            }
        }
}
        

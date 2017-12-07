///scr_deselect_text(id or 0)



//if global.mob=0 {
/*
if argument0 = 0 { // deselect all
    with obj_text_field {
        if index = 1 {
            line=string_digits(line);
            if string_length(line)>4 line=string_copy(line, string_length(line)-3, 4);
            if real(line)>=800 and real(line)<=3000 obj_controller_gameplay.correct_time=1;
            else {obj_controller_gameplay.correct_time=0; scr_show_tip(51);}
            if string_length(line)<4 line=string_insert('0',line,1);
            if string_length(line)<4 line=string_insert('0',line,1);
            if string_length(line)<4 line=string_insert('0',line,1);
            if string_length(line)<4 line=string_insert('0',line,1);
            line=string_insert(text.scor,line,3); 
            color = c_white;
        } else if index = 2 { //000'
            line=string_digits(line);
            if string_length(line)>3 line=string_copy(line, string_length(line)-2, 3);
            if real(line)>=200 and real(line)<=220 obj_controller_gameplay.correct_temp=1;
            else {obj_controller_gameplay.correct_temp=0;  scr_show_tip(51);}
            line=string_insert(text.scor,line,string_length(line)+1);
            color = c_white;
        } else if index = 3 or index=4 { //
            if global.mob=0 line = prev_string; 
            if string_length(line)>20 line=string_copy(line,1,20)+string('...');
            scr_check_words();
        } else {
            if global.mob=0 line = prev_string; 
            if line='' line = start_line;
        }
        focus = 0;
        
        
        
    }
} else {           //deselect only this
    with argument0 {
        if index = 1 {
            line=string_digits(line);
            if string_length(line)>4 line=string_copy(line, string_length(line)-3, 4);
            if real(line)>=800 and real(line)<=3000 obj_controller_gameplay.correct_time=1;
            else {obj_controller_gameplay.correct_time=0; scr_show_tip(51);}
            if string_length(line)<4 line=string_insert('0',line,1);
            if string_length(line)<4 line=string_insert('0',line,1);
            if string_length(line)<4 line=string_insert('0',line,1);
            if string_length(line)<4 line=string_insert('0',line,1);
            line=string_insert(text.scor,line,3); 
            color = c_white;
        } else if index = 2 { //000'
            line=string_digits(line);
            if string_length(line)>3 line=string_copy(line, string_length(line)-2, 3);
            if real(line)>=200 and real(line)<=220 obj_controller_gameplay.correct_temp=1;
            else {obj_controller_gameplay.correct_temp=0; scr_show_tip(51);}
            line=string_insert(text.scor,line,string_length(line)+1);
            color = c_white;
        } else if index = 3 or index=4 { //
            if global.mob=0 line = prev_string; 
            if string_length(line)>20 line=string_copy(line,1,20)+string('...');
            scr_check_words();
        } else {
            if global.mob=0 line = prev_string; 
            if line='' line = start_line;
        }
        focus = 0;
        
        
    }
}*/

//}

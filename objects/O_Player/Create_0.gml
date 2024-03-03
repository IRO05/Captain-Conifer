//init

//buffer setup
setup();

//Movement
move_dir = 0; //-1 is left, 0 is not moving, 1 is right
move_spd = 3;
x_spd = 0;
y_spd = 0;


//Gravity and Collions (kinda)
is_grounded = true;
grav = .275;
term_velocity = 4; //max fallspeed

j_spd[0]= -5 //height for first jump
j_spd[1] = -3; //height for second jump

//jump buffering and varible jump height stuff
max_jumps = 2; //max number of jumps that can be performed
jump_counter = 0;
jump_hold_time = 0;
jump_hold_max[0] = 5; //max amount of frames first jump can be held
jump_hold_max[1] = 5; //max amount of frames second jump can be held





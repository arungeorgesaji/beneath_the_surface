x_speed = 0;
y_speed = 0;

// RIGHT
if keyboard_check(vk_right) && !place_meeting(x+collide_speed, y, oSolid) {
    x_speed = walk_speed;
    target_angle = 0;
}

// LEFT
if keyboard_check(vk_left) && !place_meeting(x-collide_speed, y, oSolid) {
    x_speed = -walk_speed;
    target_angle = 180;
}

// UP
if keyboard_check(vk_up) && !place_meeting(x, y-collide_speed, oSolid) {
    y_speed = -walk_speed;
    target_angle = 90;
}

// DOWN
if keyboard_check(vk_down) && !place_meeting(x, y+collide_speed, oSolid) {
    y_speed = walk_speed; 
    target_angle = 270;
}

image_angle = target_angle;

x += x_speed;
y += y_speed;																																																
x_speed = 0;
y_speed = 0;

if !(place_meeting(x+10, y, oSolid)) {
    if (keyboard_check_pressed(vk_right)) {
        x_speed = walk_speed;
        target_angle = 0;
    }
}

if !(place_meeting(x-10, y, oSolid)) {
    if (keyboard_check_pressed(vk_left)) {
        x_speed = -walk_speed;
        target_angle = 180;
    }
}

if !(place_meeting(x, y-10, oSolid)) {
    if (keyboard_check_pressed(vk_up)) {
        y_speed = -walk_speed;
        target_angle = 90; // up
    }
}

if !(place_meeting(x, y+10, oSolid)) {
    if (keyboard_check_pressed(vk_down)) {
        y_speed = walk_speed;
        target_angle = 270; // down
    }
}

image_angle = target_angle
x += x_speed;
y += y_speed;

if (x < 0 || x > room_width || y < 0 || y > room_height)
{
	room_goto_next();
}
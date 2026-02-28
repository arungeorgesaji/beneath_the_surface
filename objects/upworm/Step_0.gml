x_speed = 0;

if !(place_meeting(x, y+10, oSolid)) {
	y_speed = y_speed + walk_speed;
} else {
    x_speed = walk_speed;
}

x += x_speed;
y += y_speed;

if (x < 0 || x > room_width || y < 0 || y > room_height)
{
	room_goto_next();
}
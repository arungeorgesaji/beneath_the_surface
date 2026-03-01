direction = image_angle;
speed = walk_speed;

if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    x = start_x;
    y = start_y;
}
var target = oWorm;

direction = point_direction(x, y, target.x, target.y);
speed = walk_speed;

image_angle = direction;

if (x < 0 || x > room_width || y < 0 || y > room_height)
{
    x = start_x;
    y = start_y;
}
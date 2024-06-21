if (instance_exists(obj_mario))
{
    var target_x = obj_mario.x;
    var target_y = obj_mario.y;

    var direction_to_player = point_direction(x, y, target_x, target_y);
    var distance_to_player = point_distance(x, y, target_x, target_y);

    var follow_speed = 0.5;

    var move_x = lengthdir_x(follow_speed, direction_to_player);
    var move_y = lengthdir_y(follow_speed, direction_to_player);

    x += move_x;
    y += move_y;

    var threshold = 0.5;

    if (distance_to_player < threshold)
    {
        x = target_x;
        y = target_y;
    }

}
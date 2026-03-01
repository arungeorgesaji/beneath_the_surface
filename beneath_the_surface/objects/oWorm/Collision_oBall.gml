instance_destroy(other);

audio_play_sound(coin, 20 , false);

if (!instance_exists(oBall))
{
    with (oDoor) instance_destroy();
}
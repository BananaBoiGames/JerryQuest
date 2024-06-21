/// @description Generate rain drops

repeat (freq) {
    
    with (instance_create(__view_get( e__VW.XView, view_current )+round(random_range(0,512)), __view_get( e__VW.YView, 0 )-5, obj_rain))
        depth = round(random_range(-6,9));
}


/// @description Generate snow drops

with (instance_create(__view_get( e__VW.XView, view_current )+round(random_range(0,512)), __view_get( e__VW.YView, 0 )-5, obj_snow)) 
    depth = round(random_range(-6,9));


execute if score @s[tag=kello.entity.type.cogwheel] kello.decal.rot_mode matches 0 run function animated_java:decwheel/animations/clockwise_large_run/stop
execute if score @s[tag=kello.entity.type.cogwheel] kello.decal.rot_mode matches 1 run function animated_java:decwheel/animations/counter_clockwise_large_run/stop

execute if score @s[tag=kello.entity.type.cogwheel_shaft] kello.decal.rot_mode matches 0 run function animated_java:decwheel/animations/clockwise_large_run/stop
execute if score @s[tag=kello.entity.type.cogwheel_shaft] kello.decal.rot_mode matches 1 run function animated_java:decwheel/animations/counter_clockwise_large_run/stop
return 1
# Start animation
# Too lazy to make search tree

execute if score @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] kello.decal.rot_mode matches 0 run function animated_java:decwheel/animations/clockwise_small/pause
execute if score @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] kello.decal.rot_mode matches 1 run function animated_java:decwheel/animations/counter_clockwise_small/pause

execute if score @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] kello.decal.rot_mode matches 0 run function animated_java:decwheel/animations/clockwise_large/pause
execute if score @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] kello.decal.rot_mode matches 1 run function animated_java:decwheel/animations/counter_clockwise_large/pause

execute if score @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel_shaft] kello.decal.rot_mode matches 0 run function animated_java:decwheel/animations/clockwise_small/pause
execute if score @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel_shaft] kello.decal.rot_mode matches 1 run function animated_java:decwheel/animations/counter_clockwise_small/pause

execute if score @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel_shaft] kello.decal.rot_mode matches 0 run function animated_java:decwheel/animations/clockwise_large/pause
execute if score @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel_shaft] kello.decal.rot_mode matches 1 run function animated_java:decwheel/animations/counter_clockwise_large/pause
return 1
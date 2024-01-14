# Flip according to rot mode

execute if score @s kello.decal.rot_mode matches 1 run function animated_java:animwheel/animations/flip/play



# Modify Variants
# Too lazy to make search tree

function animated_java:animwheel/apply_variant/default



#execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] run function animated_java:animwheel/apply_variant/small_shaft
#execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] run function animated_java:animwheel/apply_variant/large_shaft

execute if entity @s[tag=kello.entity.type.gear_0] run function animated_java:animwheel/apply_variant/gear_0_fast
execute if entity @s[tag=kello.entity.type.gear_1] run function animated_java:animwheel/apply_variant/gear_1_fast
execute if entity @s[tag=kello.entity.type.gear_2] run function animated_java:animwheel/apply_variant/gear_2_fast
execute if entity @s[tag=kello.entity.type.gear_3] run function animated_java:animwheel/apply_variant/gear_3_fast
execute if entity @s[tag=kello.entity.type.gear_4] run function animated_java:animwheel/apply_variant/gear_4_fast
execute if entity @s[tag=kello.entity.type.gear_5] run function animated_java:animwheel/apply_variant/gear_5_fast
execute if entity @s[tag=kello.entity.type.gear_6] run function animated_java:animwheel/apply_variant/gear_6_fast
execute if entity @s[tag=kello.entity.type.gear_7] run function animated_java:animwheel/apply_variant/gear_7_fast
execute if entity @s[tag=kello.entity.type.gear_8] run function animated_java:animwheel/apply_variant/gear_8_fast

tag @s add kello.state.fast
tag @s remove kello.state.slow
return 1
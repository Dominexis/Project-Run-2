# Flip according to rot mode

execute if score @s kello.decal.rot_mode matches 1 run function animated_java:animwheel/animations/flip/play



# Modify Variants
# Too lazy to make search tree

function animated_java:animwheel/apply_variant/default



#execute if entity @s[tag=kello.entity.type.small,tag=kello.entity.type.cogwheel] run function animated_java:animwheel/apply_variant/small_shaft
#execute if entity @s[tag=kello.entity.type.large,tag=kello.entity.type.cogwheel] run function animated_java:animwheel/apply_variant/large_shaft

execute if entity @s[tag=kello.entity.type.gear_0,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_0_static
execute if entity @s[tag=kello.entity.type.gear_1,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_1_static
execute if entity @s[tag=kello.entity.type.gear_2,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_2_static
execute if entity @s[tag=kello.entity.type.gear_3,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_3_static
execute if entity @s[tag=kello.entity.type.gear_4,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_4_static
execute if entity @s[tag=kello.entity.type.gear_5,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_5_static
execute if entity @s[tag=kello.entity.type.gear_6,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_6_static
execute if entity @s[tag=kello.entity.type.gear_7,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_7_static
execute if entity @s[tag=kello.entity.type.gear_8,tag=!kello.state.slow] run function animated_java:animwheel/apply_variant/gear_8_static

tag @s remove kello.state.fast
tag @s remove kello.state.slow
return 1
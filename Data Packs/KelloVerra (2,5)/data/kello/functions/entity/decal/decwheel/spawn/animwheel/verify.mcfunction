execute if score #variant kello.value matches 0 run function animated_java:animwheel/summon/gear_0_static
execute if score #variant kello.value matches 1 run function animated_java:animwheel/summon/gear_1_static
execute if score #variant kello.value matches 2 run function animated_java:animwheel/summon/gear_2_static
execute if score #variant kello.value matches 3 run function animated_java:animwheel/summon/gear_3_static
execute if score #variant kello.value matches 4 run function animated_java:animwheel/summon/gear_4_static
execute if score #variant kello.value matches 5 run function animated_java:animwheel/summon/gear_5_static
execute if score #variant kello.value matches 6 run function animated_java:animwheel/summon/gear_6_static
execute if score #variant kello.value matches 7 run function animated_java:animwheel/summon/gear_7_static
execute if score #variant kello.value matches 8 run function animated_java:animwheel/summon/gear_8_static

execute if score #is_dummy kello.value matches 0 if score #variant kello.value matches 0..8 as @e[type=minecraft:item_display,tag=kello.entity.target.new] run function kello:entity/decal/decwheel/spawn/animwheel/gear_init
execute if score #is_dummy kello.value matches 1 if score #variant kello.value matches 0..8 as @e[type=minecraft:item_display,tag=kello.entity.target.new] run function kello:entity/decal/decwheel/spawn/animwheel/gear_dummy_init
execute if score #is_dummy kello.value matches 1 if score #variant kello.value matches 0..8 run kill @s
return 1
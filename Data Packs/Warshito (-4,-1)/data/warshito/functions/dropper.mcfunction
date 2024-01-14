# Dropper

execute positioned ~-6 ~36 ~-6 as @a[dx=10,dz=10,tag=pr.target] run tag @s add dropper
execute positioned ~-6 ~36 ~-6 as @a[dx=10,dz=10,tag=pr.target] run tag @s add kill_white
execute positioned ~-6 ~36 ~-6 as @a[dx=10,dz=10,tag=pr.target] run effect clear @s minecraft:resistance
execute positioned ~-6 ~36 ~-6 as @a[dx=10,dz=10,tag=pr.target] run attribute @s minecraft:generic.max_health base set 2
execute positioned ~-6 ~36 ~-6 as @a[dx=10,dz=10,tag=pr.target] run effect give @s minecraft:instant_health 1 1 true

execute as @a[tag=pr.target,tag=kill_white] at @s if block ~ ~-0.1 ~ minecraft:white_concrete run function pr:player/checkpoint/send_to
execute as @a[tag=pr.target,tag=kill_white] at @s if block ~ ~-0.1 ~ minecraft:white_concrete_powder run function pr:player/checkpoint/send_to
execute as @a[tag=pr.target,tag=!dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run function pr:player/checkpoint/send_to
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run tag @s remove kill_white
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run tag @s remove Red
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run tag @s remove Blue
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run tag @s remove Green
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run tag @s remove pr.hide_timer
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run clear @s
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run effect give @s minecraft:resistance infinite 200 true
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run attribute @s minecraft:generic.max_health base set 20
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ minecraft:powder_snow run effect give @s minecraft:instant_health 1 100 true
return 1
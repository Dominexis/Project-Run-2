# Dropper

execute positioned ~-6 ~36 ~-6 as @a[tag=pr.target,dz=10,dx=10] run tag @s add dropper
execute positioned ~-6 ~36 ~-6 as @a[tag=pr.target,dz=10,dx=10] run tag @s add kill_white
execute positioned ~-6 ~36 ~-6 as @a[tag=pr.target,dz=10,dx=10] run effect clear @s resistance
execute positioned ~-6 ~36 ~-6 as @a[tag=pr.target,dz=10,dx=10] run attribute @s minecraft:generic.max_health base set 2
execute positioned ~-6 ~36 ~-6 as @a[tag=pr.target,dz=10,dx=10] run effect give @s minecraft:instant_health 1 1 true

execute as @a[tag=pr.target,tag=kill_white] at @s if block ~ ~-0.1 ~ white_concrete run function pr:player/checkpoint/send_to
execute as @a[tag=pr.target,tag=kill_white] at @s if block ~ ~-0.1 ~ white_concrete_powder run function pr:player/checkpoint/send_to
execute as @a[tag=pr.target,tag=!dropper] at @s if block ~ ~-0.1 ~ powder_snow run function pr:player/checkpoint/send_to
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run tag @s remove kill_white
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run tag @s remove Red
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run tag @s remove Blue
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run tag @s remove Green
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run tag @s remove pr.hide_timer
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run clear @s
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run effect give @s resistance infinite 200 true
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run attribute @s generic.max_health base set 20
execute as @a[tag=pr.target,tag=dropper] at @s if block ~ ~-0.1 ~ powder_snow run effect give @s minecraft:instant_health 1 100 true
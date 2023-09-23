#wrong code enter

scoreboard players set tick inquognito.keypad 60

playsound minecraft:entity.wither.spawn ambient @a[tag=pr.target] ~ ~ ~ 0.5 1 0

execute at @e[tag=inquognito.keypad.key.5.button] run summon minecraft:item_display ^ ^-0.05 ^0.1 {Tags:["inquognito","inquognitokeyerror"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0f]},item:{id:"minecraft:barrier",Count:1b}}
execute at @e[tag=inquognito.keypad.key.0.button] run summon minecraft:interaction ~ ~-0.1 ~ {Tags:["inquognito","inquognitokeyerror"]}

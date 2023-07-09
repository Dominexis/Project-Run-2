#wrong code enter

scoreboard players set tick lokicode 60

playsound entity.wither.spawn ambient @a ~ ~ ~ 0.5 1 0

execute at @e[tag=loki55,tag=pr.target] run summon item_display ^ ^-0.05 ^0.1 {Tags:["lokierror","pr.target"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.9f,0.9f,0f]},item:{id:"minecraft:barrier",Count:1b}}
execute at @e[tag=loki00,tag=pr.target] run summon interaction ~ ~-0.1 ~ {Tags:["lokierror","pr.target"]}
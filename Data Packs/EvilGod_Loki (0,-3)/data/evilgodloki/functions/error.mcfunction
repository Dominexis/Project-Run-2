#wrong code enter

scoreboard players set tick lokicode 60

playsound minecraft:entity.wither.spawn ambient @a[tag=pr.target] ~ ~ ~ 0.5 1 0

execute at @e[tag=loki55,tag=pr.target] run summon minecraft:item_display ^ ^-0.05 ^0.1 {Tags:["lokierror","pr.target"],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[0.9f,0.9f,0.0f]},item:{id:"minecraft:barrier",Count:1b}}
execute at @e[tag=loki00,tag=pr.target] run summon minecraft:interaction ~ ~-0.1 ~ {Tags:["lokierror","pr.target"]}
return 1
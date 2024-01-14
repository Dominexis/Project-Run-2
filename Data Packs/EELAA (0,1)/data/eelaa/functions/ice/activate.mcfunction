execute positioned ~-29 ~1 ~-35 as @a[distance=..4,tag=pr.target] run title @s title ""
execute unless block ~-29 ~-1 ~-35 minecraft:ice positioned ~-29 ~1 ~-35 as @a[distance=..4,tag=pr.target] run title @s subtitle {"text":"Swim Backwards!","color":"yellow","type":"text"}
scoreboard players reset #eelaa eelaa_tridents
fill ~-24 ~-3 ~-38 ~-36 ~14 ~-16 minecraft:water replace minecraft:ice
return 1
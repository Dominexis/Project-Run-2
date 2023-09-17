summon minecraft:block_display ~-13.5 ~-5.5 ~-13.5 {brightness:{sky:15,block:15},view_range:1.5f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[29f,.5f,29f]},block_state:{Name:"minecraft:blue_stained_glass"},Tags:["lory.water"]}
summon minecraft:block_display ~4.5 ~-5.501 ~-16.5 {brightness:{sky:15,block:15},view_range:1.5f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[12f,.5f,12f]},block_state:{Name:"minecraft:blue_stained_glass"},Tags:["lory.water"]}
#execute as @e[type=minecraft:block_display,tag=lory.water,tag=pr.target] run data merge entity @s {start_interpolation:0,interpolation_duration:3866,transformation:{translation:[0f,116f,0f]}}
summon marker ~-17.5 ~-6 ~-17.5 {Tags:["lory.deathplane"]}
scoreboard players set gamestate lory 1
scoreboard players set gametime lory 0
scoreboard players set timeleft lory 3866
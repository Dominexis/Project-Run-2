#Honey
execute as @e[tag=subchronos_pit2_1,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:40,transformation:{scale:[12f,3.2f,17f]}}
execute as @e[tag=subchronos_pit2_2,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:40,transformation:{scale:[9f,3.2f,8.5f]}}

#Platforms
execute as @e[type=minecraft:block_display,tag=subchronos_platform1_pit2,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,1.7f,-0.5f],scale:[2f,2f,2f],left_rotation:[0.08f,0f,0f,1f]},interpolation_duration:40,start_interpolation:-1}
execute as @e[type=minecraft:block_display,tag=subchronos_platform2_pit2,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,1.7f,-0.5f],scale:[2f,2f,2f],left_rotation:[-0.04f,0.06f,0f,1f]},interpolation_duration:40,start_interpolation:-1}

#Anounce
title @a[tag=subchronos_pit2,tag=pr.target] times 5 40 5
title @a[tag=subchronos_pit2,tag=pr.target] title {"text":"","color":"yellow"}
title @a[tag=subchronos_pit2,tag=pr.target] subtitle {"text":"¡The honey is raising!","color":"yellow"}
playsound minecraft:block.note_block.pling master @a[tag=subchronos_pit2,tag=pr.target] ~ ~ ~ 100 0.6

scoreboard players set pit2_moving subchronos_hive 1
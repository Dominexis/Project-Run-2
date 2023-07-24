#Honey
execute as @e[tag=subchronos_pit1,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:60,transformation:{scale:[33f,1f,16f]}}

#Platforms
execute as @e[type=minecraft:block_display,tag=subchronos_platform_pit1,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,0f,-0.5f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f]},interpolation_duration:60,start_interpolation:-1}

#Anounce
title @a[tag=subchronos_pit1,tag=pr.target] times 5 40 5
title @a[tag=subchronos_pit1,tag=pr.target] title {"text":"","color":"yellow"}
title @a[tag=subchronos_pit1,tag=pr.target] subtitle {"text":"¡The honey is going down!","color":"yellow"}
playsound minecraft:block.note_block.pling master @a[tag=subchronos_pit1,tag=pr.target] ~ ~ ~ 100 1


scoreboard players set pit1_moving subchronos_hive 1
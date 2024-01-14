#Honey
execute as @e[tag=subchronos_pit1,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:60,transformation:{scale:[33.0f,6.0f,16.0f]}}

#Platforms
execute as @e[type=minecraft:block_display,tag=subchronos_platform1_pit1,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,4.5f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.07f,0.0f,0.02f,1.0f]},interpolation_duration:60,start_interpolation:-1}
execute as @e[type=minecraft:block_display,tag=subchronos_platform2_pit1,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,4.5f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[-0.05f,0.0f,0.02f,1.0f]},interpolation_duration:60,start_interpolation:-1}

#Anounce
title @a[tag=subchronos_pit1,tag=pr.target] times 5 40 5
title @a[tag=subchronos_pit1,tag=pr.target] title {"text":"","color":"yellow","type":"text"}
title @a[tag=subchronos_pit1,tag=pr.target] subtitle {"text":"¡The honey is raising!","color":"yellow","type":"text"}
playsound minecraft:block.note_block.pling master @a[tag=subchronos_pit1,tag=pr.target] ~ ~ ~ 100 0.6

scoreboard players set pit1_moving subchronos_hive 1
return 1
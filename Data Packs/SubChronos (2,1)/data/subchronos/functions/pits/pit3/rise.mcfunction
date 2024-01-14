#Honey
execute as @e[tag=subchronos_pit3,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:40,transformation:{scale:[70.0f,4.0f,70.0f]}}

#Platforms
execute as @e[type=minecraft:block_display,tag=subchronos_platform1_pit3,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,2.7f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.08f,0.0f,0.0f,1.0f]},interpolation_duration:40,start_interpolation:-1}
execute as @e[type=minecraft:block_display,tag=subchronos_platform2_pit3,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,2.5f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[-0.03f,0.02f,0.0f,1.0f]},interpolation_duration:40,start_interpolation:-1}
execute as @e[type=minecraft:block_display,tag=subchronos_platform3_pit3,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,2.4f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[-0.09f,0.04f,0.0f,1.0f]},interpolation_duration:40,start_interpolation:-1}
execute as @e[type=minecraft:block_display,tag=subchronos_platform4_pit3,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,2.7f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.04f,0.0f,0.0f,1.0f]},interpolation_duration:40,start_interpolation:-1}
#Anounce
title @a[tag=subchronos_pit3,tag=pr.target] times 5 40 5
title @a[tag=subchronos_pit3,tag=pr.target] title {"text":"","color":"yellow","type":"text"}
title @a[tag=subchronos_pit3,tag=pr.target] subtitle {"text":"¡The honey is raising!","color":"yellow","type":"text"}
playsound minecraft:block.note_block.pling master @a[tag=subchronos_pit3,tag=pr.target] ~ ~ ~ 100 0.6

scoreboard players set pit3_moving subchronos_hive 1
return 1
#Honey
execute as @e[tag=subchronos_pit2_1,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:40,transformation:{scale:[12.0f,1.0f,17.0f]}}
execute as @e[tag=subchronos_pit2_2,tag=pr.target] run data merge entity @s {start_interpolation:-1,interpolation_duration:40,transformation:{scale:[9.0f,1.0f,8.5f]}}

#Platforms
execute as @e[type=minecraft:block_display,tag=subchronos_platform_pit2,tag=pr.target] run data merge entity @s {transformation:{translation:[-0.5f,0.0f,-0.5f],scale:[2.0f,2.0f,2.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f]},interpolation_duration:40,start_interpolation:-1}

#Anounce
title @a[tag=subchronos_pit2,tag=pr.target] times 5 40 5
title @a[tag=subchronos_pit2,tag=pr.target] title {"text":"","color":"yellow","type":"text"}
title @a[tag=subchronos_pit2,tag=pr.target] subtitle {"text":"¡The honey is going down!","color":"yellow","type":"text"}
playsound minecraft:block.note_block.pling master @a[tag=subchronos_pit2,tag=pr.target] ~ ~ ~ 100 1


scoreboard players set pit2_moving subchronos_hive 1
return 1
# Detect player hitbox when at an area

execute if entity @s[tag=!kello.player.has_triggered.entrance] positioned ~-2.25 ~1 ~-43.25 if entity @s[dx=2.5,dy=5,dz=2.5] run function kello:player/tick/area/entrance
execute if score @s kello.player.coglected matches 0 positioned ~-1.25 ~5 ~-29.25 if entity @s[dx=2.5,dy=5,dz=2.5] run function kello:player/tick/area/coglect/large
execute if entity @s[tag=!kello.player.has_triggered.lvl_2_start] positioned ~-1 ~1 ~-18 if entity @s[dx=2,dy=5,dz=2] run function kello:player/tick/area/lvl_2_start
execute if entity @s[tag=!kello.player.has_triggered.lvl_2_mid] positioned ~-2 ~3 ~-8 if entity @s[dx=2,dy=5,dz=2] run function kello:player/tick/area/lvl_2_mid
execute if entity @s[tag=!kello.player.has_triggered.lvl_3_lobby_start] positioned ~-1 ~1 ~16 if entity @s[dx=2,dy=7,dz=2] run function kello:player/tick/area/lvl_3_lobby_start
execute if entity @s[tag=!kello.player.has_triggered.lvl_4_pre] positioned ~-6 ~19 ~-34 if entity @s[dx=2,dy=8,dz=2] run function kello:player/tick/area/lvl_4_pre
execute if entity @s[tag=!kello.player.has_triggered.lvl_4_pre] positioned ~4 ~19 ~-34 if entity @s[dx=2,dy=9,dz=2] run function kello:player/tick/area/lvl_4_pre
execute if entity @s[tag=!kello.player.has_triggered.lvl_4_start] positioned ~-1 ~27 ~-35 if entity @s[dx=2,dy=5,dz=2] run function kello:player/tick/area/lvl_4_start
execute if entity @s[tag=!kello.player.has_triggered.lvl_5_start] positioned ~-3 ~66 ~15 if entity @s[dx=6,dy=8,dz=3] run function kello:player/tick/area/lvl_5_start
execute if entity @s[tag=!kello.player.has_triggered.lvl_6_start] positioned ~-1 ~95 ~-25 if entity @s[dx=2,dy=6,dz=2] run function kello:player/tick/area/lvl_6_start
execute if entity @s[tag=!kello.player.has_triggered.lvl_6_music_end_trans] positioned ~-2 ~134 ~-13 if entity @s[dx=4,dy=5,dz=4] run function kello:player/tick/area/lvl_6_music_end_trans
execute if entity @s[tag=!kello.player.has_triggered.lvl_7_start] positioned ~-3 ~164 ~-14 if entity @s[dx=6,dy=8,dz=6] run function kello:player/tick/area/lvl_7_start
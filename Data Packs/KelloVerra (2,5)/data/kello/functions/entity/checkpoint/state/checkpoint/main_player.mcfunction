tag @s add kello.player.targeted



execute at @s summon marker run function kello:entity/checkpoint/state/checkpoint/main_player_init
tp @s ~ ~ ~ ~ ~



function pr:player/checkpoint/mark



execute if entity @s[tag=kello.player.flag_atramentum] run scoreboard players set #flag_color kello.value 0 
execute if entity @s[tag=kello.player.flag_forestglide] run scoreboard players set #flag_color kello.value 1 
execute if entity @s[tag=kello.player.flag_nebulae] run scoreboard players set #flag_color kello.value 2 
execute if entity @s[tag=kello.player.flag_sundown] run scoreboard players set #flag_color kello.value 3

execute if score #flag_color kello.value matches -1 run function kello:player/setup/choose_flag_color


scoreboard players operation @s kello.player.void_y = #local kello.player.void_y



execute as @e[type=marker,tag=kello.entity.kill_this_now,tag=kello.entity.temp_player_marker] at @s run function kello:entity/checkpoint/state/checkpoint/main_player_tele



scoreboard players operation @s kello.player.checkpoint.id = #local kello.player.checkpoint.id
scoreboard players operation @s kello.level.id = #local kello.level.id
tag @s remove kello.player.targeted
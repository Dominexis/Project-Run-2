#SCOREBOARDS
scoreboard objectives add jpmagic.tmp dummy
scoreboard objectives add jpmagic.constant dummy
scoreboard players set 10 jpmagic.constant 10
scoreboard objectives add jpmagic.luckyjump dummy
scoreboard objectives add jpmagic.jpkey dummy

summon marker ~-4 ~-51 ~20 {Tags:["jpmagic.key_marker"]}
summon marker ~-4 ~-47 ~21 {Tags:["death"]}
summon marker ~-5 ~-52 ~23 {Tags:["jp_key_marker"]}
summon marker ~-31 ~-60 ~34 {Tags:["LootGoblin"]}



#BOSSBARS
bossbar add jpmagic.volcanokeeper ["",{"text":"I","obfuscated":true,"color":"yellow"},{"text":"I","obfuscated":true,"color":"gold"},{"text":"Vol","bold":true,"color":"#F11D28"},{"text":"can","bold":true,"color":"#FD3A2D"},{"text":"o's","bold":true,"color":"#FE612C"},{"text":" Kee","bold":true,"color":"#FF872C"},{"text":"per","bold":true,"color":"#FFA12C"},{"text":"I","obfuscated":true,"color":"gold"},{"text":"I","obfuscated":true,"color":"yellow"}]
bossbar set jpmagic.volcanokeeper color red
bossbar set jpmagic.volcanokeeper max 20

#Text Displays
summon marker ~-23 ~3 ~-5 {Tags:["TextDisplayMarker"]}
summon marker ~9 ~-31 ~-25 {Tags:["TextDisplayMarker"]}
summon marker ~20 ~-5 ~-14 {Tags:["TextDisplayMarker"]}

execute as @e[tag=TextDisplayMarker] at @s align xyz run summon minecraft:text_display ~.4 ~2.6 ~1.25 {Tags:["jpt","jplucky"],text:"{\"text\":\"?\",\"color\":\"light_purple\"}",background: 0,interpolation_duration:0,start_interpolation:0,transformation:[5.000f, 0.000f, 0.000f,0.000f,0.000f, 0.000f, 5.000f,-2.500f,0.000f, -5.000f, 0.000f,0.000f,0.000f, 0.000f, 0.000f,1.000f]}

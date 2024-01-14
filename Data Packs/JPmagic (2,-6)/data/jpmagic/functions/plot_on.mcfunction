#SCOREBOARDS
scoreboard objectives add jpmagic.tmp dummy
scoreboard objectives add jpmagic.constant dummy
scoreboard players set 10 jpmagic.constant 10
scoreboard objectives add jpmagic.luckyjump dummy
scoreboard objectives add jpmagic.jpkey dummy

summon minecraft:marker ~-4 ~-51 ~20 {Tags:["jpmagic.key_marker"]}
summon minecraft:marker ~-4 ~-47 ~21 {Tags:["death"]}
summon minecraft:marker ~-5 ~-52 ~23 {Tags:["jp_key_marker"]}
summon minecraft:marker ~-31 ~-60 ~34 {Tags:["LootGoblin"]}

scoreboard players set #boss_cooldown jpmagic.tmp 0



#BOSSBARS
bossbar add jpmagic.volcanokeeper ["",{"text":"I","obfuscated":true,"color":"yellow","type":"text"},{"text":"I","obfuscated":true,"color":"gold","type":"text"},{"text":"Vol","bold":true,"color":"#F11D28","type":"text"},{"text":"can","bold":true,"color":"#FD3A2D","type":"text"},{"text":"o's","bold":true,"color":"#FE612C","type":"text"},{"text":" Kee","bold":true,"color":"#FF872C","type":"text"},{"text":"per","bold":true,"color":"#FFA12C","type":"text"},{"text":"I","obfuscated":true,"color":"gold","type":"text"},{"text":"I","obfuscated":true,"color":"yellow","type":"text"}]
bossbar set jpmagic.volcanokeeper color red
bossbar set jpmagic.volcanokeeper max 20

#Text Displays
summon minecraft:marker ~-23 ~3 ~-5 {Tags:["TextDisplayMarker"]}
summon minecraft:marker ~9 ~-31 ~-25 {Tags:["TextDisplayMarker"]}
summon minecraft:marker ~20 ~-5 ~-14 {Tags:["TextDisplayMarker"]}

execute as @e[tag=TextDisplayMarker] at @s align xyz run summon minecraft:text_display ~.4 ~2.6 ~1.25 {Tags:["jpt","jplucky"],text:'{"text":"?","color":"light_purple","type":"text"}',background:0,interpolation_duration:0,start_interpolation:0,transformation:[5.0f,0.0f,0.0f,0.0f,0.0f,0.0f,5.0f,-2.5f,0.0f,-5.0f,0.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}

return 1
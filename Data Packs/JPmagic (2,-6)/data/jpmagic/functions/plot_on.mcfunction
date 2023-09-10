#SCOREBOARDS
scoreboard objectives add jpmagic.tmp dummy
scoreboard objectives add jpmagic.constant dummy
scoreboard players set 10 jpmagic.constant 10
scoreboard objectives add jpmagic.luckyjump dummy
scoreboard objectives add jpmagic.jpkey dummy

#BOSSBARS
bossbar add jpmagic.volcanokeeper ["",{"text":"I","obfuscated":true,"color":"yellow"},{"text":"I","obfuscated":true,"color":"gold"},{"text":"Vol","bold":true,"color":"#F11D28"},{"text":"can","bold":true,"color":"#FD3A2D"},{"text":"o's","bold":true,"color":"#FE612C"},{"text":" Kee","bold":true,"color":"#FF872C"},{"text":"per","bold":true,"color":"#FFA12C"},{"text":"I","obfuscated":true,"color":"gold"},{"text":"I","obfuscated":true,"color":"yellow"}]
bossbar set jpmagic.volcanokeeper color red
bossbar set jpmagic.volcanokeeper max 20
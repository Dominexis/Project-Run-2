#SCOREBOARDS
scoreboard objectives add tmp dummy
scoreboard objectives add constant dummy
scoreboard players set 10 constant 10
scoreboard objectives add luckyjump dummy
scoreboard objectives add jpkey dummy

#BOSSBARS
bossbar add volcanokeeper ["",{"text":"I","obfuscated":true,"color":"yellow"},{"text":"I","obfuscated":true,"color":"gold"},{"text":"Vol","bold":true,"color":"#F11D28"},{"text":"can","bold":true,"color":"#FD3A2D"},{"text":"o's","bold":true,"color":"#FE612C"},{"text":" Kee","bold":true,"color":"#FF872C"},{"text":"per","bold":true,"color":"#FFA12C"},{"text":"I","obfuscated":true,"color":"gold"},{"text":"I","obfuscated":true,"color":"yellow"}]
bossbar set volcanokeeper color red
bossbar set volcanokeeper max 20
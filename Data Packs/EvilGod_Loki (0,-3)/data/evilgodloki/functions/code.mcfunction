#find which key is push

execute as @e[tag=loki11] on target run scoreboard players set temp lokicode 1
execute as @e[tag=loki11] on attacker run scoreboard players set temp lokicode 1
execute as @e[tag=loki22] on target run scoreboard players set temp lokicode 2
execute as @e[tag=loki22] on attacker run scoreboard players set temp lokicode 2
execute as @e[tag=loki33] on target run scoreboard players set temp lokicode 3
execute as @e[tag=loki33] on attacker run scoreboard players set temp lokicode 3
execute as @e[tag=loki44] on target run scoreboard players set temp lokicode 4
execute as @e[tag=loki44] on attacker run scoreboard players set temp lokicode 4
execute as @e[tag=loki55] on target run scoreboard players set temp lokicode 5
execute as @e[tag=loki55] on attacker run scoreboard players set temp lokicode 5
execute as @e[tag=loki66] on target run scoreboard players set temp lokicode 6
execute as @e[tag=loki66] on attacker run scoreboard players set temp lokicode 6
execute as @e[tag=loki77] on target run scoreboard players set temp lokicode 7
execute as @e[tag=loki77] on attacker run scoreboard players set temp lokicode 7
execute as @e[tag=loki88] on target run scoreboard players set temp lokicode 8
execute as @e[tag=loki88] on attacker run scoreboard players set temp lokicode 8
execute as @e[tag=loki99] on target run scoreboard players set temp lokicode 9
execute as @e[tag=loki99] on attacker run scoreboard players set temp lokicode 9
execute as @e[tag=loki00] on target run scoreboard players set temp lokicode 0
execute as @e[tag=loki00] on attacker run scoreboard players set temp lokicode 0
execute as @e[tag=lokixx] on target run scoreboard players set temp lokicode -1
execute as @e[tag=lokixx] on attacker run scoreboard players set temp lokicode -1
execute as @e[tag=lokivv] on target run scoreboard players set temp lokicode 10
execute as @e[tag=lokivv] on attacker run scoreboard players set temp lokicode 10

function evilgodloki:push

execute if score temp lokicode matches 0..9 run function evilgodloki:09
execute if score temp lokicode matches -1 run function evilgodloki:del
execute if score temp lokicode matches 10 run function evilgodloki:test
tag @a remove lokiclick
scoreboard players reset temp lokicode
execute as @e[tag=loki] run data remove entity @s attack
execute as @e[tag=loki] run data remove entity @s interaction
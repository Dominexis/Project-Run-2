#find which key is push

execute as @e[tag=loki11,tag=pr.target] on target run scoreboard players set temp lokicode 1
execute as @e[tag=loki11,tag=pr.target] on attacker run scoreboard players set temp lokicode 1
execute as @e[tag=loki22,tag=pr.target] on target run scoreboard players set temp lokicode 2
execute as @e[tag=loki22,tag=pr.target] on attacker run scoreboard players set temp lokicode 2
execute as @e[tag=loki33,tag=pr.target] on target run scoreboard players set temp lokicode 3
execute as @e[tag=loki33,tag=pr.target] on attacker run scoreboard players set temp lokicode 3
execute as @e[tag=loki44,tag=pr.target] on target run scoreboard players set temp lokicode 4
execute as @e[tag=loki44,tag=pr.target] on attacker run scoreboard players set temp lokicode 4
execute as @e[tag=loki55,tag=pr.target] on target run scoreboard players set temp lokicode 5
execute as @e[tag=loki55,tag=pr.target] on attacker run scoreboard players set temp lokicode 5
execute as @e[tag=loki66,tag=pr.target] on target run scoreboard players set temp lokicode 6
execute as @e[tag=loki66,tag=pr.target] on attacker run scoreboard players set temp lokicode 6
execute as @e[tag=loki77,tag=pr.target] on target run scoreboard players set temp lokicode 7
execute as @e[tag=loki77,tag=pr.target] on attacker run scoreboard players set temp lokicode 7
execute as @e[tag=loki88,tag=pr.target] on target run scoreboard players set temp lokicode 8
execute as @e[tag=loki88,tag=pr.target] on attacker run scoreboard players set temp lokicode 8
execute as @e[tag=loki99,tag=pr.target] on target run scoreboard players set temp lokicode 9
execute as @e[tag=loki99,tag=pr.target] on attacker run scoreboard players set temp lokicode 9
execute as @e[tag=loki00,tag=pr.target] on target run scoreboard players set temp lokicode 0
execute as @e[tag=loki00,tag=pr.target] on attacker run scoreboard players set temp lokicode 0
execute as @e[tag=lokixx,tag=pr.target] on target run scoreboard players set temp lokicode -1
execute as @e[tag=lokixx,tag=pr.target] on attacker run scoreboard players set temp lokicode -1
execute as @e[tag=lokivv,tag=pr.target] on target run scoreboard players set temp lokicode 10
execute as @e[tag=lokivv,tag=pr.target] on attacker run scoreboard players set temp lokicode 10

function evilgodloki:push

execute if score temp lokicode matches 0..9 run function evilgodloki:09
execute if score temp lokicode matches -1 run function evilgodloki:del
execute if score temp lokicode matches 10 run function evilgodloki:test
tag @a[tag=pr.target] remove lokiclick
scoreboard players reset temp lokicode
execute as @e[tag=loki,tag=pr.target] run data remove entity @s attack
execute as @e[tag=loki,tag=pr.target] run data remove entity @s interaction
return 1
#test code is correct or not

scoreboard players operation code lokicode = lokia lokicode
scoreboard players operation code lokicode *= 10 lokicode
scoreboard players operation code lokicode += lokib lokicode
scoreboard players operation code lokicode *= 10 lokicode
scoreboard players operation code lokicode += lokic lokicode
scoreboard players operation code lokicode *= 10 lokicode
scoreboard players operation code lokicode += lokid lokicode

execute as @e[tag=lokicode] if score @s lokicode = code lokicode run function evilgodloki:correct
execute if score correct lokicode matches 0 run function evilgodloki:error
scoreboard players set correct lokicode 0
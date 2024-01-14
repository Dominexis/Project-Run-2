effect give @s minecraft:invisibility infinite 1 true
gamemode adventure @s
attribute @s minecraft:generic.attack_speed base set -1
tag @s remove bnsd.goto2d
tag @s add bnsd.in2d
scoreboard players add .global bnsd.id 1
scoreboard players operation @s bnsd.id = .global bnsd.id
summon minecraft:armor_stand ~ ~ ~-5 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,NoBasePlate:1b,Tags:["pr.target","bnsd.needlink","bnsd.char"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:16711680}},Count:1b},{id:"minecraft:leather_leggings",tag:{display:{color:16711680}},Count:1b},{id:"minecraft:leather_chestplate",tag:{display:{color:16711680}},Count:1b},{}],CustomName:'{"text":"bnsd","type":"text"}'}
tag @s add bnsd.playerlink
execute as @e[type=minecraft:armor_stand,tag=bnsd.needlink,tag=pr.target] run function bansed:needlink

return 1
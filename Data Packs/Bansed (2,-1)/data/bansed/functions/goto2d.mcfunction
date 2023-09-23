effect give @s invisibility infinite 1 true
gamemode adventure @s
attribute @s minecraft:generic.attack_speed base set -1
tag @s remove bnsd.goto2d
tag @s add bnsd.in2d
scoreboard players add .global bnsd.id 1
scoreboard players operation @s bnsd.id = .global bnsd.id
summon armor_stand ~ ~ ~-5 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Small:1b,NoBasePlate:1b,Tags:["pr.target","bnsd.needlink","bnsd.char"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{}],CustomName:'{"text":"bnsd"}'}
tag @s add bnsd.playerlink
execute as @e[type=armor_stand,tag=bnsd.needlink,tag=pr.target] run function bansed:needlink

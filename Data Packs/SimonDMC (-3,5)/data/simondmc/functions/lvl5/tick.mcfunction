### Level 5

# Give back crossbow while picking up arrow if player somehow lost it
execute at @e[tag=pr.target,tag=sdmc.display-arrow] as @a[distance=..1.3,tag=pr.target] store result score @s sdmc.item.crossbow run clear @s crossbow 0
execute at @e[tag=pr.target,tag=sdmc.display-arrow] as @a[distance=..1.3,tag=pr.target,scores={sdmc.item.crossbow=0}] run give @s crossbow{display:{Lore:['{"text":"Flame","color":"gray","italic":false}']},HideFlags:37,Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:3s}]}

# Pick up arrow (next tick, otherwise given arrow is ghost for some reason)
execute as @a[tag=pr.target,tag=sdmc.give-arrow] run give @s arrow
tag @a[tag=pr.target,tag=sdmc.give-arrow] remove sdmc.give-arrow
execute at @e[tag=pr.target,tag=sdmc.display-arrow] as @a[distance=..1.3,tag=pr.target] store result score @s sdmc.item.arrow run clear @s arrow 0
execute at @e[tag=pr.target,tag=sdmc.display-arrow] as @a[distance=..1.3,tag=pr.target,scores={sdmc.item.arrow=0}] run tag @s add sdmc.give-arrow

# Flaming arrows
execute as @e[type=arrow,tag=pr.target] run data merge entity @s {Fire:1000}

# TNT timer
execute if entity @e[type=tnt,tag=pr.target] run scoreboard players add sdmc.tnt sdmc.sys 1
# Continue timer even after TNT explodes
execute if score sdmc.tnt sdmc.sys matches 1.. unless entity @e[type=tnt,tag=pr.target] run scoreboard players add sdmc.tnt sdmc.sys 1

# Reset sideways TNT motion
execute as @e[type=tnt,tag=pr.target] run data modify entity @s Motion[0] set value 0.0d
execute as @e[type=tnt,tag=pr.target] run data modify entity @s Motion[2] set value 0.0d

# Kill priming arrow
execute at @e[type=tnt,tag=pr.target,nbt={Fuse:80s}] run kill @e[type=arrow,tag=pr.target,distance=..3]

# TNT out of water safeguard
# (should be fixed by "Prevent TNT getting stuck in chains" system, this is just a backup)
execute as @e[type=tnt,tag=pr.target,nbt={Fuse:1s}] at @s unless block ~ ~ ~ big_dripleaf_stem[waterlogged=true] run kill @s 

# Double TNT boost
# (this is done due to one TNT not launching high enough)
execute at @e[type=tnt,tag=pr.target,nbt={Fuse:1s}] run summon tnt

# Chain/TNT animation
execute if score sdmc.tnt sdmc.sys matches 20 run setblock ~-4 ~11 ~14 air
execute if score sdmc.tnt sdmc.sys matches 25 run setblock ~-4 ~12 ~14 air
execute if score sdmc.tnt sdmc.sys matches 30 run setblock ~-4 ~13 ~14 air
execute if score sdmc.tnt sdmc.sys matches 35 run setblock ~-4 ~14 ~14 air
execute if score sdmc.tnt sdmc.sys matches 140 run setblock ~-4 ~14 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 145 run setblock ~-4 ~13 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 145 run setblock ~-4 ~14 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 150 run setblock ~-4 ~12 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 150 run setblock ~-4 ~13 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 155 run setblock ~-4 ~11 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 155 run setblock ~-4 ~12 ~14 chain
execute if score sdmc.tnt sdmc.sys matches 160 run setblock ~-4 ~10 ~14 tnt
execute if score sdmc.tnt sdmc.sys matches 160 run setblock ~-4 ~11 ~14 chain

# Prevent TNT getting stuck in chains
execute if score sdmc.tnt sdmc.sys matches 145 run kill @e[type=tnt,tag=pr.target]
execute if score sdmc.tnt sdmc.sys matches 150 run kill @e[type=tnt,tag=pr.target]
execute if score sdmc.tnt sdmc.sys matches 155 run kill @e[type=tnt,tag=pr.target]
execute if score sdmc.tnt sdmc.sys matches 160 run kill @e[type=tnt,tag=pr.target]

# Make sure dripleaf is down for launch
execute if score sdmc.tnt sdmc.sys matches 80..100 run setblock ~-4 ~3 ~14 big_dripleaf[facing=east,tilt=full]

# Replenish dripleaf in time for player to land on and jump off of
execute if score sdmc.tnt sdmc.sys matches 100 run setblock ~-4 ~3 ~14 big_dripleaf[facing=east]

# Restart timer if TNT exists past tick 100 (meaning TNT was shot during the refill animation)
execute if score sdmc.tnt sdmc.sys matches 100.. if entity @e[type=tnt,tag=pr.target] run scoreboard players set sdmc.tnt sdmc.sys 1

# Reset timer after animation finishes
execute if score sdmc.tnt sdmc.sys matches 160 run scoreboard players reset sdmc.tnt sdmc.sys
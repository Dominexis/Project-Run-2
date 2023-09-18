# Timer score
scoreboard players add @s marcostrk-icy-boat-parkour-checkpoint-timer 1

# Once a second
#####################################################################################################################################################################################

# If player still in boat
execute if score @s marcostrk-icy-boat-parkour-checkpoint-timer matches 1 if score @s marcostrk-icy-boat-parkour-inside_boat matches 1 at @s align xyz run tp @s ~ ~1 ~

# Give checkpoint
execute if score @s marcostrk-icy-boat-parkour-checkpoint-timer matches 1 run function pr:player/checkpoint/mark

# Player remounts their boat
execute if score @s marcostrk-icy-boat-parkour-checkpoint-timer matches 1 run ride @s mount @e[type=minecraft:boat,tag=pr.target,distance=..1,sort=nearest,limit=1]

#####################################################################################################################################################################################

# Reset timer to 0
execute if score @s marcostrk-icy-boat-parkour-checkpoint-timer matches 20.. run scoreboard players set @s marcostrk-icy-boat-parkour-checkpoint-timer 0
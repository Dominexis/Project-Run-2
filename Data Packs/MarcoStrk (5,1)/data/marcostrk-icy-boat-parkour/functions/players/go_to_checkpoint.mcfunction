execute if score @s marcostrk-icy-boat-parkour-inside_boat matches 0 run tellraw @s {"text":"You have to drive a boat","color":"red","type":"text"}
trigger checkpoint

# Fail save when respawn system fails
scoreboard players add @s marcostrk-icy-boat-parkour-died 1
execute if score @s marcostrk-icy-boat-parkour-died matches 5.. at @e[type=minecraft:marker,tag=marcostrk-icy-boat-parkour-Center,limit=1] run tp @s ~-38 ~17 ~ -180 0
execute if score @s marcostrk-icy-boat-parkour-died matches 5.. run function pr:player/checkpoint/mark
execute if score @s marcostrk-icy-boat-parkour-died matches 5.. run scoreboard players set @s marcostrk-icy-boat-parkour-died 0
return 1
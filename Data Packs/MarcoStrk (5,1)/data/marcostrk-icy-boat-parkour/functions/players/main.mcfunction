# Stores value 1 if player is sitting in a boat
execute store success score @s marcostrk-icy-boat-parkour-inside_boat if predicate marcostrk-icy-boat-parkour:on_boat

# Players without a boat get teleported to the last checkpoint by /trigger checkpoint
execute if score @s marcostrk-icy-boat-parkour-inside_boat matches 0 at @s unless block ~ ~-0.75 ~ minecraft:gold_block unless block ~ ~-1.5 ~ minecraft:gold_block run function marcostrk-icy-boat-parkour:players/go_to_checkpoint
execute at @s if block ~ ~-0.5 ~ minecraft:gold_block run function marcostrk-icy-boat-parkour:checkpoint/main
execute at @s unless block ~ ~-0.5 ~ minecraft:gold_block run scoreboard players set @s marcostrk-icy-boat-parkour-checkpoint-timer 0

# Clear boats when sitting inside a boat
execute if score @s marcostrk-icy-boat-parkour-inside_boat matches 1 run clear @s #minecraft:boats

# Gametime for Checkpoint failsave
scoreboard players set @s marcostrk-icy-boat-parkour-20 20
scoreboard players operation @s marcostrk-icy-boat-parkour-tmp = @s marcostrk-icy-boat-parkour-game-time
scoreboard players operation @s marcostrk-icy-boat-parkour-tmp %= @s marcostrk-icy-boat-parkour-20
execute if score @s marcostrk-icy-boat-parkour-tmp matches 0 run scoreboard players set @s marcostrk-icy-boat-parkour-died 0

return 1
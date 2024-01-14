# Up / Down
tag @a[tag=pr.target] remove cobra2.up
tag @a[tag=pr.target] remove cobra2.down
tag @a[scores={cobra2.y=35..}] add cobra2.up
tag @a[scores={cobra2.y=..35}] add cobra2.down

execute as @a[tag=pr.target] at @s run function cobra2:tick_players

# Checkpoints
execute positioned ~ ~45 ~ as @a[distance=..2,tag=pr.target] run function pr:player/checkpoint/mark_pos
execute positioned ~9 ~17 ~-28 as @a[distance=..3,tag=pr.target,tag=!cobra2.has_boots] run function cobra2:gain_ability

# Clear boots
execute positioned ~ ~19 ~-38 run tag @a[distance=..4,tag=pr.target] remove cobra2.has_boots
execute positioned ~11 ~21 ~-34 run tag @a[distance=..3,tag=pr.target] remove cobra2.has_boots
execute positioned ~11 ~49 ~-34 run tag @a[distance=..3,tag=pr.target] remove cobra2.has_boots
execute positioned ~11 ~49 ~-34 as @a[distance=..3,tag=pr.target,scores={cobra2.y=..47}] run function cobra2:flip
execute positioned ~34 ~61 ~ run tag @a[distance=..5,tag=pr.target] remove cobra2.has_boots
execute positioned ~ ~61 ~34 run tag @a[distance=..5,tag=pr.target] remove cobra2.has_boots

clear @a[tag=pr.target,tag=!cobra2.has_boots] minecraft:iron_boots
clear @a[tag=pr.target,tag=!cobra2.has_boots] minecraft:netherite_boots

# Snap turns
execute positioned ~34 ~56 ~ as @a[distance=..2,tag=pr.target,tag=!cobra2.turned] run playsound minecraft:ambient.cave ambient @s ~ ~-2 ~-30 3 0.6 1
execute positioned ~34 ~56 ~ as @a[distance=..2,tag=pr.target,tag=!cobra2.turned] at @s run function cobra2:snap_turn
execute positioned ~ ~56 ~34 as @a[distance=..2,tag=pr.target,tag=!cobra2.turned] run playsound minecraft:ambient.cave ambient @s ~30 ~-2 ~ 3 0.6 1
execute positioned ~ ~56 ~34 as @a[distance=..2,tag=pr.target,tag=!cobra2.turned] at @s run function cobra2:snap_turn

# Misc
kill @e[type=minecraft:item,tag=pr.target]
stopsound @a[tag=pr.target] music
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 1 1 1 1 ~ 37.2 ~ 0.8 0 0.8 1 2
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 0 0 0 1 ~ 63.8 ~ 0.8 0 0.8 1 2
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 0 0 0 1 ~ 6.2 ~ 0.8 0 0.8 1 2
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 1 1 1 1 ~ 33.8 ~ 0.8 0 0.8 1 2
scoreboard players add @a[tag=pr.target] cobra2.ambient 1

return 1
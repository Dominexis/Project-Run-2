# Players on ground
execute as @a[tag=pr.target] store result score @s cobra2.y run data get entity @s Pos[1]
kill @a[tag=pr.target,gamemode=adventure,scores={cobra2.y=36..37}]
kill @a[tag=pr.target,gamemode=adventure,scores={cobra2.y=5..6}]

# Players on glass
execute as @a[tag=pr.target,gamemode=adventure] at @s if block ~ ~ ~ minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure] at @s if block ~ ~ ~ minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~-1 ~-1 ~ minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~-1 ~-1 ~ minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~1 ~-1 ~ minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~1 ~-1 ~ minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~-1 minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~-1 minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~1 minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~1 minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~-1 ~-1 ~-1 minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~-1 ~-1 ~-1 minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~-1 ~-1 ~1 minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~-1 ~-1 ~1 minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~1 ~-1 ~-1 minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~1 ~-1 ~-1 minecraft:black_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~1 ~-1 ~1 minecraft:white_stained_glass run kill @s
execute as @a[tag=pr.target,gamemode=adventure,nbt={OnGround:1b}] at @s if block ~1 ~-1 ~1 minecraft:black_stained_glass run kill @s

# Give boots
clear @a[tag=pr.target,tag=cobra2.down] minecraft:iron_boots
clear @a[tag=pr.target,tag=cobra2.up] minecraft:netherite_boots
execute as @a[tag=pr.target] unless entity @s[nbt={Inventory:[{Slot:4b}]}] run function cobra2:give_boots

# Flip
execute as @a[tag=pr.target,scores={cobra2.flip1=1..}] run function cobra2:flip
execute as @a[tag=pr.target,scores={cobra2.flip2=1..}] run function cobra2:flip

# Up / Down
tag @a[tag=pr.target] remove cobra2.up
tag @a[tag=pr.target] remove cobra2.down
tag @a[scores={cobra2.y=35..}] add cobra2.up
tag @a[scores={cobra2.y=..35}] add cobra2.down

# Checkpoints
execute positioned ~9 ~17 ~-28 as @a[tag=pr.target,tag=!cobra2.has_boots,distance=..3] run function cobra2:gain_ability

# Clear boots
execute positioned ~ ~19 ~-38 run tag @a[tag=pr.target,distance=..4] remove cobra2.has_boots
execute positioned ~11 ~21 ~-34 run tag @a[tag=pr.target,distance=..3] remove cobra2.has_boots
execute positioned ~11 ~49 ~-34 run tag @a[tag=pr.target,distance=..3] remove cobra2.has_boots
execute positioned ~11 ~49 ~-34 as @a[tag=pr.target,distance=..3,scores={cobra2.y=..47}] run function cobra2:flip
execute positioned ~34 ~61 ~ run tag @a[tag=pr.target,distance=..5] remove cobra2.has_boots
execute positioned ~ ~61 ~34 run tag @a[tag=pr.target,distance=..5] remove cobra2.has_boots

clear @a[tag=pr.target,tag=!cobra2.has_boots] minecraft:iron_boots
clear @a[tag=pr.target,tag=!cobra2.has_boots] minecraft:netherite_boots

# Snap turns
execute positioned ~34 ~56 ~ as @a[tag=pr.target,tag=!cobra2.turned,distance=..2] run playsound minecraft:ambient.cave ambient @s ~ ~-2 ~-30 3 0.6 1
execute positioned ~34 ~56 ~ as @a[tag=pr.target,tag=!cobra2.turned,distance=..2] run function cobra2:snap_turn
execute positioned ~ ~56 ~34 as @a[tag=pr.target,tag=!cobra2.turned,distance=..2] run playsound minecraft:ambient.cave ambient @s ~30 ~-2 ~ 3 0.6 1
execute positioned ~ ~56 ~34 as @a[tag=pr.target,tag=!cobra2.turned,distance=..2] run function cobra2:snap_turn

# Misc
kill @e[type=item,tag=pr.target]
stopsound @a[tag=pr.target] music
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 1 1 1 1 ~ 37.2 ~ 0.8 0 0.8 1 2
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 0 0 0 1 ~ 63.8 ~ 0.8 0 0.8 1 2
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 0 0 0 1 ~ 6.2 ~ 0.8 0 0.8 1 2
execute at @a[tag=pr.target,tag=cobra2.has_boots] run particle minecraft:dust 1 1 1 1 ~ 33.8 ~ 0.8 0 0.8 1 2

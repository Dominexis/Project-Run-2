# Door 1
scoreboard players set @s eosand.door 1
scoreboard players add @s eosand.timer_door 1

execute if score @s eosand.timer_door matches 2 run fill ~-2 ~5 ~34 ~2 ~5 ~34 minecraft:air
execute if score @s eosand.timer_door matches 2 run playsound minecraft:block.piston.extend block @s ~ ~1 ~33 0.5 2.0
execute if score @s eosand.timer_door matches 2 run particle minecraft:poof ~.5 ~5.5 ~33.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 4 run fill ~-2 ~4 ~34 ~2 ~4 ~34 minecraft:air
execute if score @s eosand.timer_door matches 4 run playsound minecraft:block.piston.extend block @s ~ ~1 ~33 0.5 2.0
execute if score @s eosand.timer_door matches 4 run particle minecraft:poof ~.5 ~4.5 ~33.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 6 run fill ~-2 ~3 ~34 ~2 ~3 ~34 minecraft:air
execute if score @s eosand.timer_door matches 6 run playsound minecraft:block.piston.extend block @s ~ ~1 ~33 0.5 2.0
execute if score @s eosand.timer_door matches 6 run particle minecraft:poof ~.5 ~3.5 ~33.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 8 run fill ~-2 ~2 ~34 ~2 ~2 ~34 minecraft:air
execute if score @s eosand.timer_door matches 8 run playsound minecraft:block.piston.extend block @s ~ ~1 ~33 0.5 2.0
execute if score @s eosand.timer_door matches 8 run particle minecraft:poof ~.5 ~2.5 ~33.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 10 run fill ~-2 ~1 ~34 ~2 ~1 ~34 minecraft:air
execute if score @s eosand.timer_door matches 10 run playsound minecraft:block.piston.extend block @s ~ ~1 ~33 0.5 2.0
execute if score @s eosand.timer_door matches 10 run particle minecraft:poof ~.5 ~1.5 ~33.5 2 1 1 0.01 10


execute if score @s eosand.timer_door matches 65 run fill ~-2 ~1 ~34 ~2 ~1 ~34 minecraft:iron_block
execute if score @s eosand.timer_door matches 65 run playsound minecraft:block.piston.contract block @s ~ ~1 ~33 0.5 2.0

execute if score @s eosand.timer_door matches 66 run fill ~-2 ~2 ~34 ~2 ~2 ~34 minecraft:iron_block
execute if score @s eosand.timer_door matches 66 run playsound minecraft:block.piston.contract block @s ~ ~1 ~33 0.5 2.0

execute if score @s eosand.timer_door matches 67 run fill ~-2 ~3 ~34 ~2 ~3 ~34 minecraft:iron_block
execute if score @s eosand.timer_door matches 67 run playsound minecraft:block.piston.contract block @s ~ ~1 ~33 0.5 2.0

execute if score @s eosand.timer_door matches 68 run fill ~-2 ~4 ~34 ~2 ~4 ~34 minecraft:iron_block
execute if score @s eosand.timer_door matches 68 run playsound minecraft:block.piston.contract block @s ~ ~1 ~33 0.5 2.0

execute if score @s eosand.timer_door matches 69 run fill ~-2 ~5 ~34 ~2 ~5 ~34 minecraft:iron_block
execute if score @s eosand.timer_door matches 69 run playsound minecraft:block.piston.contract block @s ~ ~1 ~33 0.5 2.0

execute if score @s eosand.timer_door matches 70 run scoreboard players set @s eosand.timer_door 0
execute if score @s eosand.timer_door matches 0 run scoreboard players set @s eosand.door 0
return 1
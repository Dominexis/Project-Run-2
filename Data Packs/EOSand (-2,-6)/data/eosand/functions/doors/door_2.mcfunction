# Door 2
scoreboard players set @s eosand.door 2
scoreboard players add @s eosand.timer_door 1

execute if score @s eosand.timer_door matches 2 run fill ~-2 ~5 ~9 ~2 ~5 ~9 air
execute if score @s eosand.timer_door matches 2 run playsound block.piston.extend block @a[tag=pr.target] ~ ~2 ~9 0.5 2.0
execute if score @s eosand.timer_door matches 2 run particle poof ~.5 ~5.5 ~9.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 4 run fill ~-2 ~4 ~9 ~2 ~4 ~9 air
execute if score @s eosand.timer_door matches 4 run playsound block.piston.extend block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0
execute if score @s eosand.timer_door matches 4 run particle poof ~.5 ~4.5 ~9.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 6 run fill ~-2 ~3 ~9 ~2 ~3 ~9 air
execute if score @s eosand.timer_door matches 6 run playsound block.piston.extend block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0
execute if score @s eosand.timer_door matches 6 run particle poof ~.5 ~3.5 ~9.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 8 run fill ~-2 ~2 ~9 ~2 ~2 ~9 air
execute if score @s eosand.timer_door matches 8 run playsound block.piston.extend block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0
execute if score @s eosand.timer_door matches 8 run particle poof ~.5 ~2.5 ~9.5 2 1 1 0.01 10

execute if score @s eosand.timer_door matches 10 run fill ~-2 ~1 ~9 ~2 ~1 ~9 air
execute if score @s eosand.timer_door matches 10 run playsound block.piston.extend block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0
execute if score @s eosand.timer_door matches 10 run particle poof ~.5 ~1.5 ~9.5 2 1 1 0.01 10


execute if score @s eosand.timer_door matches 65 run fill ~-2 ~1 ~9 ~2 ~1 ~9 iron_block
execute if score @s eosand.timer_door matches 65 run playsound block.piston.contract block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0

execute if score @s eosand.timer_door matches 66 run fill ~-2 ~2 ~9 ~2 ~2 ~9 iron_block
execute if score @s eosand.timer_door matches 66 run playsound block.piston.contract block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0

execute if score @s eosand.timer_door matches 67 run fill ~-2 ~3 ~9 ~2 ~3 ~9 iron_block
execute if score @s eosand.timer_door matches 67 run playsound block.piston.contract block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0

execute if score @s eosand.timer_door matches 68 run fill ~-2 ~4 ~9 ~2 ~4 ~9 iron_block
execute if score @s eosand.timer_door matches 68 run playsound block.piston.contract block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0

execute if score @s eosand.timer_door matches 69 run fill ~-2 ~5 ~9 ~2 ~5 ~9 iron_block
execute if score @s eosand.timer_door matches 69 run playsound block.piston.contract block @a[tag=pr.target] ~ ~1 ~9 0.5 2.0

execute if score @s eosand.timer_door matches 70 run scoreboard players set @s eosand.timer_door 0
execute if score @s eosand.timer_door matches 0 run scoreboard players set @s eosand.door 0
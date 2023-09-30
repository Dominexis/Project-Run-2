scoreboard players set #iteration1 kello.value 256
execute if entity @s[tag=kello.entity.chain_south] run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/chain/south
execute if entity @s[tag=kello.entity.chain_north] run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/chain/north

tag @s remove kello.entity.chain_process
tag @s remove kello.entity.chain_north
tag @s remove kello.entity.chain_south

execute if entity @s[tag=lory.has_raft,scores={lory.drop_raft=1..}] run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:bamboo_raft"}},distance=..6,limit=1]
clear @s
loot replace entity @s[tag=lory.has_raft] inventory.0 loot lory:barrel_raft
scoreboard players set @s lory.drop_raft 0
advancement revoke @s only lory:inventory

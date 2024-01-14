
execute if entity @s[tag=lory.oasis,tag=lory.has_raft,scores={lory.drop_raft=1..}] run kill @e[type=minecraft:item,distance=..6,limit=1,nbt={Item:{id:"minecraft:bamboo_raft"}}]
clear @s[tag=lory.oasis]
loot replace entity @s[tag=lory.oasis,tag=lory.has_raft] inventory.0 loot lory:barrel_raft
scoreboard players set @s[tag=lory.oasis] lory.drop_raft 0
advancement revoke @s only lory:inventory

return 1
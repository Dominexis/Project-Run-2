
tag @s remove pr.plate_checkpoint
advancement revoke @s only lory:inventory
effect clear @s minecraft:resistance

tag @s remove lory.has_raft
tag @s remove lory.mission_raft

function lory:inventory

tag @s remove lory.oasis


stopsound @s * minecraft:item.elytra.flying
return 1
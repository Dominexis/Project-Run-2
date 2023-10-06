
execute if predicate lory:random_snake facing entity @p[distance=..5,tag=pr.target] eyes as 0073bfd4-016d-1b4b-0001-320713876e6e positioned as @s run tp @s ~ ~ ~ ~ ~
execute anchored eyes rotated as 0073bfd4-016d-1b4b-0001-320713876e6e positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


execute as @a[distance=..6,tag=!lory.mission_raft,scores={lory.npc.raft_keeper.cooldown=1..},tag=pr.target] run function lory:npc/raft_keeper/dialogue/mission

scoreboard players set #input pr.value 31
function pr:generic/rng/predicate

execute as @a[distance=..6,tag=lory.mission_raft,scores={lory.npc.raft_keeper.cooldown=..0},tag=pr.target] run function lory:npc/raft_keeper/dialogue/random

scoreboard players remove @a[tag=pr.target,tag=lory.mission_raft,scores={lory.npc.raft_keeper.cooldown=1..}] lory.npc.raft_keeper.cooldown 1

scoreboard players set @a[tag=pr.target,distance=6..,tag=lory.mission_raft] lory.npc.raft_keeper.cooldown 21

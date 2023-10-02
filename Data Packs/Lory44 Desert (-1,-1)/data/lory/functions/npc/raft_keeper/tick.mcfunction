
execute if predicate lory:random_snake facing entity @p[distance=..5] eyes as 0073bfd4-016d-1b4b-0001-320713876e6e positioned as @s run tp @s ~ ~ ~ ~ ~
execute anchored eyes rotated as 0073bfd4-016d-1b4b-0001-320713876e6e positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~


execute store result storage lory:input random int 1 run random roll 0..16
execute if predicate lory:random_rustle as @a[distance=..6,tag=mission.raft,scores={lory.npc.raft_keeper.cooldown=..0}] run function lory:npc/raft_keeper/dialogue with storage lory:input

execute store result storage lory:input random int 1 run random roll 0..16

scoreboard players remove @a[tag=pr.target,distance=..6,scores={lory.npc.raft_keeper.cooldown=1..}] lory.npc.raft_keeper.cooldown 1

scoreboard players set @a[tag=pr.target,distance=6..] lory.npc.raft_keeper.cooldown 0

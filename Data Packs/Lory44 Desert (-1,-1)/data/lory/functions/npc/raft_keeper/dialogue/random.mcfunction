
execute if entity @s[tag=lory.has_raft] run function lory:npc/raft_keeper/dialogue/finish
execute if score @s lory.npc.raft_keeper.cooldown matches 10000.. run return 0

execute if score #output pr.value matches ..15 run scoreboard players set @s lory.npc_raft_keeper.cooldown 40

execute if score #output pr.value matches 16 run function lory:npc/raft_keeper/dialogue/random/16
execute if score #output pr.value matches 17 run function lory:npc/raft_keeper/dialogue/random/17
execute if score #output pr.value matches 18 run function lory:npc/raft_keeper/dialogue/random/18
execute if score #output pr.value matches 19 run function lory:npc/raft_keeper/dialogue/random/19
execute if score #output pr.value matches 20 run function lory:npc/raft_keeper/dialogue/random/20
execute if score #output pr.value matches 21 run function lory:npc/raft_keeper/dialogue/random/21
execute if score #output pr.value matches 22 run function lory:npc/raft_keeper/dialogue/random/22
execute if score #output pr.value matches 23 run function lory:npc/raft_keeper/dialogue/random/23
execute if score #output pr.value matches 24 run function lory:npc/raft_keeper/dialogue/random/24
execute if score #output pr.value matches 25 run function lory:npc/raft_keeper/dialogue/random/25
execute if score #output pr.value matches 26 run function lory:npc/raft_keeper/dialogue/random/26
execute if score #output pr.value matches 27 run function lory:npc/raft_keeper/dialogue/random/27
execute if score #output pr.value matches 28 run function lory:npc/raft_keeper/dialogue/random/28
execute if score #output pr.value matches 29 run function lory:npc/raft_keeper/dialogue/random/29
execute if score #output pr.value matches 30 run function lory:npc/raft_keeper/dialogue/random/30

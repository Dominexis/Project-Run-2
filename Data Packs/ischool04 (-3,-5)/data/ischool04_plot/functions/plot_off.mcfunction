# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities
kill @e[type=!player,type=!marker,type=!interaction,tag=pr.target]
execute at @e[tag=RoBa1,tag=pr.target] run fill ~ ~-1 ~ ~1 ~-4 ~ barrier replace air
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-1 ~ minecraft:red_terracotta
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-1 ~ minecraft:nether_wart_block
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-1 ~1 minecraft:nether_wart_block
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-1 ~1 minecraft:nether_wart_block
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-1 ~-1 minecraft:orange_terracotta
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-1 ~2 minecraft:orange_terracotta
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-1 ~2 minecraft:red_concrete
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-1 ~-1 minecraft:red_concrete
execute at @e[tag=CCP,tag=pr.target] run setblock ~1 ~-1 ~ minecraft:red_concrete
execute at @e[tag=CCP,tag=pr.target] run setblock ~1 ~-1 ~1 minecraft:orange_terracotta
execute at @e[tag=CCP,tag=pr.target] run setblock ~-2 ~-1 ~1 minecraft:orange_terracotta
execute at @e[tag=CCP,tag=pr.target] run setblock ~-2 ~-1 ~ minecraft:red_concrete
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-2 ~ minecraft:mangrove_planks
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-2 ~ minecraft:mangrove_planks
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-2 ~1 minecraft:mangrove_planks
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-2 ~1 minecraft:mangrove_planks
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-2 ~2 minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-2 ~-1 minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-2 ~-1 minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-2 ~2 minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~1 ~-2 ~ minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~-2 ~-2 ~ minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~-2 ~-2 ~1 minecraft:mangrove_slab[type=top]
execute at @e[tag=CCP,tag=pr.target] run setblock ~1 ~-2 ~1 minecraft:mangrove_slab[type=top]
execute at @e[tag=BP1,tag=pr.target] run setblock ~ ~ ~ acacia_button[face=ceiling,powered=false]
execute at @e[tag=BP2,tag=pr.target] run setblock ~ ~ ~ acacia_button[face=ceiling,powered=false]
execute at @e[tag=BP3,tag=pr.target] run setblock ~ ~ ~ acacia_button[face=ceiling,powered=false]
execute at @e[tag=BP4,tag=pr.target] run setblock ~ ~ ~ acacia_button[face=ceiling,powered=false]
execute at @e[tag=RoBa2,tag=pr.target] run fill ~ ~-1 ~ ~1 ~-4 ~ barrier replace air
execute at @e[tag=check1,tag=pr.target] run function pr:player/checkpoint/mark_pos
execute at @e[tag=MCBkilled,tag=pr.target] run fill ~ ~ ~ ~1 ~-2 ~1 air
execute at @e[tag=RoBa3,tag=pr.target] run fill ~ ~-1 ~ ~3 ~-3 ~ barrier replace air
execute at @e[tag=RoBa4,tag=pr.target] run fill ~ ~-1 ~ ~4 ~-3 ~ barrier replace air
execute at @e[tag=RoBa5,tag=pr.target] run fill ~ ~-1 ~ ~2 ~-3 ~ iron_bars replace air
kill @e[type=marker,tag=pr.target]
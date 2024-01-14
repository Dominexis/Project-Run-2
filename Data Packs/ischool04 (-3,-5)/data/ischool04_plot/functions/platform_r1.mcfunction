execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-1 ~ minecraft:red_terracotta
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-1 ~ minecraft:nether_wart_block
execute at @e[tag=CCP,tag=pr.target] run setblock ~ ~-1 ~1 minecraft:nether_wart_block
execute at @e[tag=CCP,tag=pr.target] run setblock ~-1 ~-1 ~1 minecraft:red_terracotta
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
execute at @e[tag=CCP,tag=pr.target] run playsound minecraft:entity.experience_bottle.throw master @a[tag=pr.target] ~ ~ ~ 1 1 1
scoreboard players reset isch.ChPl isch.ChPl
return 1
tag @a[tag=!kmc,tag=pr.target] add kmc
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~ ~-1 ~ minecraft:crimson_nylium
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~1 ~-1 ~ minecraft:red_concrete
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~ ~-1 ~1 minecraft:magma_block
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~1 ~-1 ~1 minecraft:nether_wart_block
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~1 ~ ~1 minecraft:red_candle[candles=2,lit=true]
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~1 ~-2 ~1 minecraft:mangrove_slab[type=top]
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~ ~-2 ~ minecraft:mangrove_slab[type=top]
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~ ~-2 ~1 minecraft:mangrove_slab[type=top]
execute at @e[tag=MCBkilled,tag=pr.target] run setblock ~1 ~-2 ~ minecraft:mangrove_slab[type=top]
execute at @a[tag=pr.target] run playsound minecraft:item.firecharge.use master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @e[tag=MCBkilled,tag=pr.target] run particle minecraft:lava ~0.5 ~ ~0.5 0.3 0 0.3 10 15 force @a[tag=pr.target]
scoreboard players reset @a[tag=pr.target] isch.kmc
return 1
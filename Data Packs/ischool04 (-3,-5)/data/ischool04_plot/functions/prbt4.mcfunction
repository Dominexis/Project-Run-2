execute at @e[tag=BP4] run setblock ~ ~ ~ air destroy
execute at @a[tag=pr.target] run playsound minecraft:entity.player.levelup master @a[tag=pr.target] ~ ~ ~ 1 2 1
execute at @e[tag=BP4] run particle minecraft:wax_on ~ ~-0.5 ~ 0.4 0.3 0.4 2 20 force @a[tag=pr.target]
execute at @e[tag=BP4] run particle minecraft:large_smoke ~ ~-0.5 ~ 0.1 0 0 0.3 25 force @a[tag=pr.target]
scoreboard players add @a[tag=pr.target] isch.prbt 1
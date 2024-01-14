function inquognito:logic/plot/boss/particles/ambient

function inquognito:logic/plot/boss/heartbeat

execute positioned ~-5 ~-31 ~31 if entity @s[dx=0,nbt={Inventory:[{tag:{inquognito.sonic_charge:1}}]}] run function inquognito:logic/plot/boss/damage

scoreboard players add sculk_particles inquognito.temp 1
scoreboard players operation sculk_particles inquognito.temp %= #15 pr.value

execute if score sculk_particles inquognito.temp matches 0 if entity @s[nbt={Inventory:[{tag:{inquognito.sonic_charge:1}}]}] positioned ~-5 ~-22 ~31 run function inquognito:logic/plot/boss/particles/arrow

execute if score sculk_particles inquognito.temp matches 0 if entity @s[tag=inquognito.boss.darkness_particles] run function inquognito:logic/plot/boss/particles/darkness

execute if score @s inquognito.dialogue matches -1 run function inquognito:logic/plot/boss/dialogue/captive_scientist
execute if score @s inquognito.dialogue matches 1 run function inquognito:logic/plot/boss/dialogue/1
execute if score @s inquognito.dialogue matches 2 run function inquognito:logic/plot/boss/dialogue/2
execute if score @s inquognito.dialogue matches 3 run function inquognito:logic/plot/boss/dialogue/3
execute if score @s inquognito.dialogue matches 4 run function inquognito:logic/plot/boss/dialogue/4
execute if score @s inquognito.dialogue matches 5 run function inquognito:logic/plot/boss/dialogue/5

execute if score @s inquognito.dialogue matches 1..4 if score @s inquognito.dialogue.tick matches 1..20 run particle minecraft:shriek 0 ~-5 ~-31 ~31 0.0 0.0 0.0 0.0 1 normal @s

execute if score @s inquognito.boss.health matches 99 run function inquognito:logic/plot/boss/tractor_beam

return 1
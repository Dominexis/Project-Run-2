execute if entity @s[tag=inquognito.gun] at @s run function inquognito:logic/abilities/gun/check

execute if score @s inquognito.suit matches 2.. at @s run function inquognito:logic/abilities/double_jump/check

execute if score @s inquognito.suit matches 3 at @s run function inquognito:logic/abilities/jetpack/tick/always

effect give @s[tag=!inquognito.boss.darkness,advancements={inquognito:plot/pickups/night_vision_scope=true}] minecraft:night_vision infinite 0 true
effect clear @s[tag=inquognito.boss.darkness] minecraft:night_vision

effect give @s[tag=inquognito.boss.darkness] minecraft:darkness infinite 0 true
effect clear @s[tag=!inquognito.boss.darkness] minecraft:darkness

effect give @s[tag=inquognito.transition] minecraft:blindness infinite 0 true
effect clear @s[tag=!inquognito.transition] minecraft:blindness

execute as @e[type=minecraft:marker,tag=inquognito.gun,predicate=inquognito:id_match] at @s run function inquognito:logic/abilities/gun/tick
execute as @e[type=minecraft:armor_stand,tag=inquognito.nova,predicate=inquognito:id_match] at @s run function inquognito:logic/abilities/gun/augments/nova/tick

return 1
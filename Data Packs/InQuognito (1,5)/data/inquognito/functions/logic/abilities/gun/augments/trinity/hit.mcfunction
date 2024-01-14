attribute @s minecraft:generic.knockback_resistance base set 0.8
scoreboard players operation damage inquognito.temp = @a[tag=pr.target,limit=1,predicate=inquognito:id_match] inquognito.gun.damage
scoreboard players operation damage inquognito.temp *= 4 inquognito.values
scoreboard players operation damage inquognito.temp /= #10 pr.value
function inquognito:logic/abilities/gun/damage_loop
attribute @s minecraft:generic.knockback_resistance base set 0.0

execute if score #frostbite inquognito.temp matches 1 run function inquognito:logic/abilities/gun/augments/frostbite/increase

kill @e[type=minecraft:marker,tag=inquognito.gun,sort=nearest,limit=1,predicate=inquognito:id_match]

execute as @a[tag=pr.target,limit=1,predicate=inquognito:id_match] at @s run playsound minecraft:entity.arrow.hit_player player @s

return 1
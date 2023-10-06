attribute @s minecraft:generic.knockback_resistance base set 0.8
scoreboard players operation damage inquognito.temp = @a[tag=pr.target,predicate=inquognito:id_match,limit=1] inquognito.gun.damage
function inquognito:logic/abilities/gun/damage_loop
attribute @s minecraft:generic.knockback_resistance base set 0.0

execute if score #frostbite inquognito.temp matches 1 run function inquognito:logic/abilities/gun/augments/frostbite/increase

kill @e[type=minecraft:marker,tag=inquognito.gun,sort=nearest,predicate=inquognito:id_match,limit=1]

execute as @a[tag=pr.target,predicate=inquognito:id_match,limit=1] at @s run playsound minecraft:entity.arrow.hit_player player @s

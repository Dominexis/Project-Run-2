attribute @s minecraft:generic.knockback_resistance base set 0.8
scoreboard players operation damage inquognito.temp = @s inquognito.gun.damage
function inquognito:logic/abilities/gun/damage_loop
attribute @s minecraft:generic.knockback_resistance base set 0.0

kill @e[type=minecraft:marker,tag=inquognito.gun,sort=nearest,limit=1]

execute as @a[tag=pr.target,limit=1] at @s run playsound minecraft:entity.arrow.hit_player player @s

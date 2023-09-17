damage @s 6.0 minecraft:generic
scoreboard players operation damage inquognito.temp = @a[tag=pr.target,limit=1] inquognito.gun.damage
scoreboard players operation damage inquognito.temp *= #2 pr.value
function inquognito:logic/abilities/gun/damage_loop

execute as @a[tag=pr.target,limit=1] at @s run playsound minecraft:entity.arrow.hit_player player @s

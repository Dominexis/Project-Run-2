attribute @s minecraft:generic.knockback_resistance base set 0.8
execute store success score damageSuccess temp run damage @s 4.0 inquognito:beam by @a[tag=self,limit=1]
function inquognito:logic/fighters/attributes/defaults/knockback_resistance

execute if score damageSuccess temp matches 1 as @a[tag=self,limit=1] at @s run playsound minecraft:entity.arrow.hit_player player @s

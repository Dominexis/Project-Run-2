execute on vehicle if entity @s[tag=kello.entity.lock] run tag @s add kello.terminate
ride @p[tag=pr.target,tag=kello.player.target] dismount
tp @e[type=minecraft:pufferfish,tag=kello.entity.type.chariot,tag=kello.terminate] ~ ~-2000 ~
return 1
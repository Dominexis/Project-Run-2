tp @s ^ ^ ^1.5 facing entity @e[type=minecraft:marker,distance=..256,tag=kello.entity.type.destination_marker,tag=kello.entity.target,limit=1]

execute if entity @s[tag=kello.entity.has_destination] as @p[tag=pr.target,tag=kello.entity.player.target] run tag @s add kello.player.grappling

scoreboard players remove @s[scores={kello.sound.timer=1..}] kello.sound.timer 1
scoreboard players operation #local kello.sound.timer = @s kello.sound.timer
execute as @p[tag=pr.target,tag=kello.entity.player.target] positioned as @s positioned ~ ~1 ~ run function kello:entity/chariot/state/idle/sfx
return 1
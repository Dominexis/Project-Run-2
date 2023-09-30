scoreboard players operation @s kello.decal.timer = @s kello.decal.delay
scoreboard players operation #time_mark_timer kello.entity.timer = @s kello.decal.delay
scoreboard players operation #local kello.decal.id = @s kello.decal.id
execute as @e[type=marker,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.time_mark,tag=kello.entity.part.mark,distance=..256] if score @s kello.decal.id = #local kello.decal.id positioned as @s run function kello:entity/time_mark/spawn/main


tag @s add kello.entity.cooldown
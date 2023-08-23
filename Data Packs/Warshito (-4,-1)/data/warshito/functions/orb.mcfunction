# End when collecting the orb

execute as @e[type=minecraft:armor_stand,tag=pr.target,tag=Orb] at @s run tp @s ~ ~ ~ ~2 ~0
execute as @e[type=minecraft:armor_stand,tag=pr.target,tag=Orb] at @s if entity @p[tag=pr.target,distance=..1] run tag @s add Collected
execute as @e[type=minecraft:armor_stand,tag=pr.target,tag=Orb] at @s if entity @p[tag=pr.target,distance=..1] run tag @p[tag=pr.target,distance=..1] add Finished

execute if entity @e[type=minecraft:armor_stand,tag=pr.target,tag=Collected] run scoreboard players add Orb warshito.ticks 1


execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 1..60 run particle minecraft:dust 1 0 0 1 ~ ~1.7 ~ .5 .5 .5 0 20
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 1..60 run particle minecraft:dust 0 0 1 1 ~ ~1.7 ~ .5 .5 .5 0 20
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 1..60 run particle minecraft:dust 0 1 0 1 ~ ~1.7 ~ .5 .5 .5 0 20

execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 50 run item replace entity @e[tag=pr.target,tag=Orb] armor.head with air

execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 61 run playsound minecraft:entity.firework_rocket.large_blast ambient @a
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 61..70 run particle minecraft:dust 1 0 0 1 ~ ~1.7 ~ 1 1 1 0 20
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 61..70 run particle minecraft:dust 0 0 1 1 ~ ~1.7 ~ 1 1 1 0 20
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 61..70 run particle minecraft:dust 0 1 0 1 ~ ~1.7 ~ 1 1 1 0 20

execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 71..80 run particle minecraft:dust 1 0 0 1 ~ ~1.7 ~ 2 2 2 0 20
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 71..80 run particle minecraft:dust 0 0 1 1 ~ ~1.7 ~ 2 2 2 0 20
execute as @e[tag=pr.target,tag=Orb] at @s if score Orb warshito.ticks matches 71..80 run particle minecraft:dust 0 1 0 1 ~ ~1.7 ~ 2 2 2 0 20

execute as @a[tag=pr.target,tag=Finished] if score Orb warshito.ticks matches 121.. run tp @s ~-33.5 ~65 ~-6 0 0
execute as @a[tag=pr.target,tag=Finished] if score Orb warshito.ticks matches 121.. run tag @s add dialogue3
execute as @a[tag=pr.target,tag=Finished] if score Orb warshito.ticks matches 121.. run tag @s remove dropper
execute as @a[tag=pr.target,tag=Finished] if score Orb warshito.ticks matches 121.. run tag @s remove Finished

execute as @e[type=minecraft:armor_stand,tag=pr.target,tag=Orb] if score Orb warshito.ticks matches 181.. run item replace entity @s armor.head with minecraft:player_head{SkullOwner:{Id:[I;2056400680,994658796,-2146643889,-245245515],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVkMWYxM2NiM2NlMjRkYzRmZTM0ZjJiOWJhNDY0ZmEyYzAwMzFiNDUwNWJkOGM2NzRiZjZkODc1ZjIyY2UzIn19fQ=="}]}}}

execute as @e[type=minecraft:armor_stand,tag=pr.target,tag=Orb] if score Orb warshito.ticks matches 181.. run tag @s remove Collected
execute as @e[type=minecraft:armor_stand,tag=pr.target,tag=Orb] if score Orb warshito.ticks matches 181.. run scoreboard players set Orb warshito.ticks 0
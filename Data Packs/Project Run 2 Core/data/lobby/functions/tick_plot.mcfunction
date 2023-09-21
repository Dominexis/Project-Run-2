# Spawn teleporter particles

particle minecraft:portal ~-18 ~-45 ~-18 0.1 0.5 0.1 0.1 10 force
particle minecraft:portal ~018 ~-45 ~-18 0.1 0.5 0.1 0.1 10 force
particle minecraft:portal ~-18 ~-45 ~018 0.1 0.5 0.1 0.1 10 force
particle minecraft:portal ~018 ~-45 ~018 0.1 0.5 0.1 0.1 10 force

particle minecraft:portal ~-14 ~2 ~14 0.1 0.5 0.1 0.1 10 force







# Teleport players

execute positioned ~-14 ~1 ~14 as @a[tag=pr.target,distance=..0.5] positioned ~14 ~-1 ~-14 positioned ~-4 ~-47 ~0 rotated -90 0 run function lobby:teleport
execute positioned ~-18 ~-46 ~-18 as @a[tag=pr.target,distance=..0.5] positioned ~018 ~46 ~018 positioned ~-13 ~1 ~13 rotated -105 0 run function lobby:teleport
execute positioned ~018 ~-46 ~-18 as @a[tag=pr.target,distance=..0.5] positioned ~-18 ~46 ~018 positioned ~-13 ~1 ~13 rotated -105 0 run function lobby:teleport
execute positioned ~-18 ~-46 ~018 as @a[tag=pr.target,distance=..0.5] positioned ~018 ~46 ~-18 positioned ~-13 ~1 ~13 rotated -105 0 run function lobby:teleport
execute positioned ~018 ~-46 ~018 as @a[tag=pr.target,distance=..0.5] positioned ~-18 ~46 ~-18 positioned ~-13 ~1 ~13 rotated -105 0 run function lobby:teleport







# Kick players out of the water

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ cyan_stained_glass run scoreboard players set @s pr.death 1







# Display particles for players

execute positioned ~-40 ~-50 ~-40 as @a[tag=pr.target,dx=80,dy=20,dz=80] run function pr:leaderboard/particles
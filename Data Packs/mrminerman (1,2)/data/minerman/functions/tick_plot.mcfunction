#effects

execute positioned ~-13 ~-37 ~-37 if score $fire painting_parkour matches 19 run playsound minecraft:entity.generic.extinguish_fire master @a[tag=pr.target,dx=9,dy=-20,dz=32] ~ ~ ~ 3
execute positioned ~-23 ~-37 ~-37 run effect give @a[tag=pr.target,dx=9,dy=-20,dz=32] minecraft:dolphins_grace 1 1 true
execute positioned ~-33 ~-37 ~-37 run effect give @a[tag=pr.target,dx=9,dy=-21,dz=32,tag=!aspookabie] minecraft:blindness 2 2 true
execute positioned ~-23 ~-37 ~0 as @a[tag=pr.target,dx=9,dy=-20,dz=32] at @s if block ~ ~ ~ minecraft:campfire[lit=true] run kill @s
execute positioned ~7 ~-7 ~-37 run effect give @a[tag=pr.target,dx=9,dy=-30,dz=75] minecraft:jump_boost 1 3 true
execute positioned ~7 ~-7 ~-37 run effect give @a[tag=pr.target,dx=9,dy=-30,dz=75] minecraft:slow_falling 1 3 true

#scoreboard resets
execute if score $fire painting_parkour matches 40 run scoreboard players set $fire painting_parkour 0
execute if score $campfire painting_parkour matches 80 run scoreboard players set $campfire painting_parkour 0

#scoreboard adding
execute positioned ~34 ~-63 ~-38 if entity @a[tag=pr.target,dx=-70,dy=105,dz=77] run scoreboard players add $fire painting_parkour 1
execute positioned ~34 ~-63 ~-38 if entity @a[tag=pr.target,dx=-70,dy=105,dz=77] run scoreboard players add $campfire painting_parkour 1

#campfire
execute positioned ~-14 ~-63 ~10 if score $campfire painting_parkour matches 39 run setblock ~-2 ~12 ~-1 campfire[lit=true] replace
execute positioned ~-14 ~-63 ~11 if score $campfire painting_parkour matches 39 run setblock ~-6 ~12 ~3 campfire[lit=true] replace
execute positioned ~-14 ~-63 ~12 if score $campfire painting_parkour matches 39 run setblock ~-3 ~12 ~8 campfire[lit=true] replace
execute positioned ~-14 ~-63 ~13 if score $campfire painting_parkour matches 39 run setblock ~-3 ~11 ~12 campfire[lit=true] replace
execute positioned ~-14 ~-63 ~14 if score $campfire painting_parkour matches 39 run setblock ~-5 ~11 ~8 campfire[lit=false] replace
execute positioned ~-14 ~-63 ~15 if score $campfire painting_parkour matches 39 run setblock ~-3 ~11 ~2 campfire[lit=false] replace
execute positioned ~-14 ~-63 ~16 if score $campfire painting_parkour matches 39 run setblock ~-4 ~11 ~-4 campfire[lit=false] replace

execute positioned ~-12 ~-63 ~10 if score $campfire painting_parkour matches 79 run setblock ~-4 ~12 ~-1 campfire[lit=false] replace
execute positioned ~-12 ~-63 ~11 if score $campfire painting_parkour matches 79 run setblock ~-8 ~12 ~3 minecraft:campfire[lit=false] replace
execute positioned ~-12 ~-63 ~12 if score $campfire painting_parkour matches 79 run setblock ~-5 ~12 ~8 campfire[lit=false] replace
execute positioned ~-12 ~-63 ~13 if score $campfire painting_parkour matches 79 run setblock ~-5 ~11 ~12 campfire[lit=false] replace
execute positioned ~-12 ~-63 ~14 if score $campfire painting_parkour matches 79 run setblock ~-7 ~11 ~8 campfire[lit=true] replace
execute positioned ~-12 ~-63 ~15 if score $campfire painting_parkour matches 79 run setblock ~-5 ~11 ~2 campfire[lit=true] replace
execute positioned ~-12 ~-63 ~16 if score $campfire painting_parkour matches 79 run setblock ~-6 ~11 ~-4 campfire[lit=true] replace

#fire
execute positioned ~-14 ~-63 ~-33 if score $fire painting_parkour matches 19 run fill ~2 ~12 ~7 ~4 ~12 ~8 fire
execute positioned ~-15 ~-63 ~-33 if score $fire painting_parkour matches 19 run fill ~10 ~13 ~11 ~8 ~13 ~10 fire
execute positioned ~-16 ~-63 ~-33 if score $fire painting_parkour matches 19 run fill ~6 ~13 ~19 ~4 ~13 ~17 fire

execute positioned ~-15 ~-63 ~-36 if score $fire painting_parkour matches 39 run fill ~3 ~12 ~9 ~5 ~12 ~11 air
execute positioned ~-15 ~-63 ~-36 if score $fire painting_parkour matches 39 run fill ~11 ~13 ~14 ~9 ~13 ~12 air
execute positioned ~-15 ~-63 ~-36 if score $fire painting_parkour matches 39 run fill ~7 ~13 ~22 ~5 ~13 ~19 air

#tp's up
execute positioned ~1 ~-50 ~-3 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~0 ~51 ~-24
execute positioned ~-9 ~-50 ~-3 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~10 ~51 ~12
execute positioned ~-19 ~-50 ~-3 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~20 ~51 ~-12
execute positioned ~-29 ~-50 ~-3 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~27 ~51 ~-24
execute positioned ~11 ~-50 ~34 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-13 ~51 ~-49
execute positioned ~1 ~-50 ~34 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-3 ~51 ~-25
execute positioned ~-9 ~-50 ~34 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~10 ~51 ~-13
execute positioned ~-19 ~-50 ~34 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~20 ~51 ~-37
execute positioned ~-29 ~-50 ~34 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~27 ~51 ~-13
execute positioned ~11 ~-30 ~37 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-13 ~31 ~-40


#tp's down

execute positioned ~-2 ~2 ~-30 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-27 ~-46 ~-4
execute positioned ~1 ~2 ~-30 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~0 ~-46 ~-4
execute positioned ~1 ~2 ~-18 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-20 ~-46 ~-16
execute positioned ~-2 ~2 ~-18 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~13 ~-46 ~21
execute positioned ~1 ~2 ~-6 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-20 ~-46 ~9
execute positioned ~-2 ~2 ~-6 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~13 ~-16 ~-28
execute positioned ~1 ~2 ~6 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-10 ~-46 ~-40
execute positioned ~-2 ~2 ~6 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~3 ~-46 ~-3
execute positioned ~1 ~2 ~18 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-10 ~-46 ~-15
execute positioned ~-2 ~2 ~18 as @a[tag=pr.target,dx=1,dy=1,dz=0,gamemode=!spectator] at @s run tp @s ~-27 ~-46 ~-15
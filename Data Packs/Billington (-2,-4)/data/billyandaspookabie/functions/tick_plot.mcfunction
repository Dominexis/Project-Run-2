scoreboard players add $doors mad_scientist 1

execute if score $doors mad_scientist matches 20 positioned ~1 ~39 ~-9 run clone ~8 ~-7 ~14 ~10 ~-3 ~14 ~-1 ~-6 ~-2 replace
execute if score $doors mad_scientist matches 20 positioned ~1 ~39 ~-9 run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..12] ~ ~ ~ 0.5 1 0.1
execute if score $doors mad_scientist matches 40 positioned ~-2 ~39 ~-9 run clone ~12 ~-7 ~14 ~13 ~-3 ~14 ~2 ~-6 ~-2 replace
execute if score $doors mad_scientist matches 40 positioned ~-2 ~39 ~-9 run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..12] ~ ~ ~ 0.5 0.1 0.1
execute if score $doors mad_scientist matches 40 run scoreboard players set $doors mad_scientist 0

# execute positioned ~30 ~33 ~23 unless entity @e[type=shulker,tag=spooky_lift,tag=pr.target,dx=4,dy=-20,dz=4] positioned ~-30 ~-33 ~-23 run function billyandaspookabie:real/reset

#lift up

# execute if block ~29 ~34 ~21 minecraft:spruce_button[powered=true] unless score $lift_down mad_scientist matches 1.. unless score $lift_up mad_scientist matches 1.. unless block ~31 ~33 ~22 air run function billyandaspookabie:real/liftcallup


# execute if score $lift_up mad_scientist matches 0.. as @e[type=minecraft:armor_stand,tag=spooky_lift,tag=pr.target,distance=..60] at @s run tp @s ~ ~0.1 ~
# execute if score $lift_up mad_scientist matches 0.. run scoreboard players remove $lift_up mad_scientist 1
# execute if score $lift_up mad_scientist matches -1 as @e[tag=spooky_lift,tag=pr.target,type=minecraft:armor_stand] at @s run tp @s ~ 30.518 ~
# execute if score $lift_up mad_scientist matches -1 run fill ~33 ~36 ~22 ~31 ~33 ~22 air
# execute if score $lift_up mad_scientist matches -1 run scoreboard players reset $lift_up mad_scientist


#lift down

# execute if block ~34 ~34 ~24 minecraft:spruce_button[powered=true] unless score $lift_down mad_scientist matches 1.. run function billyandaspookabie:real/liftdown

# execute if score $lift_down mad_scientist matches 0.. as @e[type=minecraft:armor_stand,tag=pr.target,tag=spooky_lift,distance=..60] at @s run tp @s ~ ~-0.1 ~
# execute if score $lift_down mad_scientist matches 0.. run scoreboard players remove $lift_down mad_scientist 1
# execute if score $lift_down mad_scientist matches -1 as @e[tag=spooky_lift,tag=pr.target,type=minecraft:armor_stand] at @s run tp @s ~ 12.518 ~
# execute if score $lift_down mad_scientist matches -1 run setblock ~34 ~34 ~24 spruce_button[powered=false,facing=south]
# execute if score $lift_down mad_scientist matches -1 run scoreboard players reset $lift_down mad_scientist






#clensing chamber

# execute if entity @a[tag=pr.target] run function billyandaspookabie:real/cleanme

execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:blackstone_stairs run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ minecraft:bamboo_stairs run kill @s

execute positioned ~-8 ~26 ~21 run kill @a[dx=14,dy=3,dz=19,tag=pr.target]
execute positioned ~2 ~25 ~-24 run kill @a[dx=33,dy=4,dz=15,tag=pr.target]
execute positioned ~-2 ~12 ~11 run kill @a[dx=11,dy=1,dz=12,tag=pr.target]
execute positioned ~-30 ~-3 ~10 run kill @a[dx=8,dy=2,dz=5,tag=pr.target]
execute positioned ~-36 ~22 ~-25 run kill @a[dx=26,dy=5,dz=34,tag=pr.target]
return 1
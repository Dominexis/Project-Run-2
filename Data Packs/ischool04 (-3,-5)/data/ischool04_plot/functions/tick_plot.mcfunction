# This function will run every tick while players are in your plot on the center block at Y=0
tp @e[tag=Rzg,tag=pr.target] @e[tag=Czg,sort=nearest,limit=1,tag=pr.target]
execute as @a[tag=pr.target,tag=!ridingS] at @s if entity @e[tag=Rzg,limit=1,sort=nearest,distance=0..4,tag=pr.target] run function ischool04_plot:zogride
scoreboard players add isch.ChPl isch.ChPl 1
execute if score isch.ChPl isch.ChPl matches 40 run function ischool04_plot:plat_change
scoreboard players add isch.regen isch.regen 1
execute if score isch.regen isch.regen matches 120 run function ischool04_plot:regen_system
execute at @e[tag=BP1,tag=pr.target] if block ~ ~ ~ acacia_button[powered=true] run function ischool04_plot:prbt1
execute at @e[tag=BP2,tag=pr.target] if block ~ ~ ~ acacia_button[powered=true] run function ischool04_plot:prbt2
execute at @e[tag=BP3,tag=pr.target] if block ~ ~ ~ acacia_button[powered=true] run function ischool04_plot:prbt3
execute at @e[tag=BP4,tag=pr.target] if block ~ ~ ~ acacia_button[powered=true] run function ischool04_plot:prbt4
execute if entity @a[scores={isch.prbt=2},limit=1,tag=!plvl1,tag=pr.target] run function ischool04_plot:comp_p1
execute if entity @a[scores={isch.prbt=4},limit=1,tag=!plvl2,tag=pr.target] run function ischool04_plot:final_p
execute if entity @a[scores={isch.kmc=2},limit=1,tag=!kmc,tag=pr.target] run function ischool04_plot:unlk_p2
scoreboard players add isch.bnp isch.bnp 1
execute if score isch.bnp isch.bnp matches 40 run function ischool04_plot:bnp_p2
execute as @a[tag=pr.target,tag=started.ride] unless predicate ischool04_plot:player_riding run ride @s mount @e[tag=Czg,limit=1,sort=nearest,tag=pr.target]
execute as @a[tag=pr.target,tag=!started.ride] if predicate ischool04_plot:player_riding run tag @s add started.ride
execute as @e[tag=Rzg,tag=pr.target] at @s if block ~ ~ ~ lava run function ischool04_plot:player_death
execute as @e[tag=Rzg,tag=pr.target] at @s if block ~ ~ ~ structure_block run function ischool04_plot:player_death
execute as @e[tag=Rzg,tag=pr.target] at @s if block ~ ~ ~ smooth_red_sandstone run function ischool04_plot:player_death
execute as @e[tag=Rzg,tag=pr.target] at @s if block ~ ~ ~ red_sandstone_wall run function ischool04_plot:player_death
execute as @a[tag=pr.target,scores={isch.dth=1}] if score @s isch.dth matches 1 run function ischool04_plot:player_nmldeath
execute at @e[tag=melee.mob,tag=pr.target] as @e[type=trident,distance=0..4,tag=pr.target] if entity @s run function ischool04_plot:ktrident_response
execute as @a[scores={isch.drop.tr=1..},tag=pr.target] if score @s isch.drop.tr matches 1.. run function ischool04_plot:give_trident
execute as @a[scores={isch.drop.ch=1..},tag=pr.target] if score @s isch.drop.ch matches 1.. run function ischool04_plot:give_chestplate 
execute as @a[scores={isch.drop.le=1..},tag=pr.target] if score @s isch.drop.le matches 1.. run function ischool04_plot:give_leggings 
execute as @a[scores={isch.drop.bo=1..},tag=pr.target] if score @s isch.drop.bo matches 1.. run function ischool04_plot:give_boots
execute if entity @a[y_rotation=135..225,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [0.0,0.5,-0.3]
execute if entity @a[y_rotation=-43..43,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [0.0,0.5,0.3]
execute if entity @a[y_rotation=-133..-45,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [0.3,0.5,0.0]
execute if entity @a[y_rotation=45..135,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [-0.3,0.5,0.0]
execute if entity @a[y_rotation=135..225,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1,limit=1,tag=pr.target] Motion set value [0.0,0.5,-0.3]
execute if entity @a[y_rotation=-43..43,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1,limit=1,tag=pr.target] Motion set value [0.0,0.5,0.3]
execute if entity @a[y_rotation=-133..-45,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1,limit=1,tag=pr.target] Motion set value [0.3,0.5,0.0]
execute if entity @a[y_rotation=45..135,tag=pr.target] at @e[tag=Rzg] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1,limit=1,tag=pr.target] Motion set value [-0.3,0.5,0.0]
execute at @e[tag=Rzg,tag=pr.target] if entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] run playsound minecraft:entity.zoglin.attack master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @e[tag=Rzg,tag=pr.target] if entity @e[type=minecraft:zombified_piglin,distance=0..1,limit=1,tag=pr.target] run playsound minecraft:entity.zoglin.attack master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @e[tag=Rzg,tag=pr.target] at @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] run particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0 20 force @a[tag=pr.target]
execute at @e[tag=Rzg,tag=pr.target] at @e[type=minecraft:zombified_piglin,distance=0..1,limit=1,tag=pr.target] run particle minecraft:crit ~ ~1 ~ 0.2 0.2 0.2 0 20 force @a[tag=pr.target]
execute as @a[tag=pr.target,limit=1] at @s if block ~ ~ ~ nether_portal run kill @e[tag=Rzg,limit=1,sort=nearest]
execute as @a[tag=pr.target,limit=1] at @s if block ~ ~ ~ nether_portal run kill @e[tag=Czg,limit=1,sort=nearest]
execute as @a[tag=pr.target,limit=1] at @s if block ~ ~ ~ nether_portal run function pr:player/finish
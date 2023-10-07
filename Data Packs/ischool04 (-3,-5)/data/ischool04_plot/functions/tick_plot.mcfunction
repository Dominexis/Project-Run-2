# This function will run every tick while players are in your plot on the center block at Y=0


# Handle Bloody Beast logic
execute as @a[tag=pr.target,tag=started.ride,scores={isch.dth=0}] unless predicate ischool04_plot:player_riding run function ischool04_plot:logic/ride
execute as @a[tag=pr.target,tag=started.ride,scores={isch.dth=0}] unless predicate ischool04_plot:player_riding run function ischool04_plot:logic/spawn_mount
execute as @a[tag=pr.target,tag=!started.ride] if predicate ischool04_plot:player_riding run tag @s add started.ride

tag @e[type=horse,tag=Czg,tag=pr.target] remove isch.has_player
execute as @a[tag=pr.target] on vehicle run tag @s[tag=Czg] add isch.has_player
execute as @e[type=horse,tag=!isch.has_player,tag=Czg,tag=pr.target] run function ischool04_plot:logic/kill_mount

execute as @e[tag=Rzg,tag=pr.target] at @s run function ischool04_plot:logic/tp_zoglin
execute positioned ~0 ~2 ~19 as @a[distance=..4,tag=pr.target,tag=!ridingS] run function ischool04_plot:zogride


# Handle player death logic
execute as @a[tag=pr.target,scores={isch.dth=0}] at @s if block ~ ~-0.5 ~ lava run kill @s
execute as @a[tag=pr.target,scores={isch.dth=0}] at @s if block ~ ~-0.5 ~ structure_void run kill @s
execute as @a[tag=pr.target,scores={isch.dth=0}] at @s if block ~ ~-2.5 ~ structure_void run kill @s
execute as @a[tag=pr.target,scores={isch.dth=0}] at @s if block ~ ~-3.5 ~ structure_void run kill @s
# execute as @a[tag=pr.target,scores={isch.dth=1}] at @s run function ischool04_plot:player_nmldeath
scoreboard players add @a[tag=pr.target,scores={isch.dth=1..}] isch.dth 1
scoreboard players set @a[tag=pr.target,scores={isch.dth=10..}] isch.dth 0



# Second checkpoint
execute as @a[tag=pr.target] at @s at @e[type=marker,tag=check2,distance=..3] rotated 180 0 run function pr:player/checkpoint/mark_pos




# Platform system
scoreboard players add isch.ChPl isch.ChPl 1
execute if score isch.ChPl isch.ChPl matches 120 run function ischool04_plot:platform_r2
execute if score isch.ChPl isch.ChPl matches 160.. run function ischool04_plot:platform_r1

# Regeneration system
scoreboard players add isch.regen isch.regen 1
execute if score isch.regen isch.regen matches 240.. run function ischool04_plot:regen_system


# Manage buttons
execute at @e[tag=BP1,tag=pr.target] if block ~ ~-1 ~ acacia_button[powered=true] run function ischool04_plot:prbt1
execute at @e[tag=BP2,tag=pr.target] if block ~ ~-1 ~ acacia_button[powered=true] run function ischool04_plot:prbt2
execute at @e[tag=BP3,tag=pr.target] if block ~ ~ ~ acacia_button[powered=true] run function ischool04_plot:prbt3
execute at @e[tag=BP4,tag=pr.target] if block ~-1 ~ ~ acacia_button[powered=true] run function ischool04_plot:prbt4


execute if entity @a[scores={isch.prbt=2},limit=1,tag=!plvl1,tag=pr.target] run function ischool04_plot:comp_p1
execute if entity @a[scores={isch.prbt=4},limit=1,tag=!plvl2,tag=pr.target] run function ischool04_plot:final_p
execute if entity @e[tag=pr.target,type=zombified_piglin,limit=1] if entity @a[tag=pr.target,tag=!kmc] unless entity @e[tag=Mmc,tag=pr.target] run function ischool04_plot:unlk_p2
scoreboard players add isch.bnp isch.bnp 1
execute if score isch.bnp isch.bnp matches 40 run function ischool04_plot:bnp_p2
execute if entity @a[tag=pr.target,tag=kmc,limit=1] as @e[type=zombified_piglin,tag=pr.target,tag=!engared] at @s run function ischool04_plot:angry_zpiglin
effect give @e[type=minecraft:zombified_piglin,tag=pr.target,tag=!more.slow] minecraft:slowness infinite 4 false


# Kill items that shouldn't exist
kill @e[type=minecraft:experience_orb,tag=pr.target]
kill @e[type=item,tag=pr.target,tag=!ischool.processed,nbt={Item:{id:"minecraft:acacia_button"}}]
kill @e[type=item,tag=pr.target,tag=!ischool.processed,nbt={Item:{id:"minecraft:saddle"}}]
kill @e[type=item,tag=pr.target,tag=!ischool.processed,nbt={Item:{id:"minecraft:iron_bars"}}]
tag @e[type=item,tag=pr.target] add ischool.processed



# Item logic
execute at @e[tag=melee.mob,tag=pr.target] as @e[type=trident,distance=0..4,tag=pr.target] if entity @s run function ischool04_plot:ktrident_response
execute as @a[scores={isch.drop.tr=1..},tag=pr.target] if score @s isch.drop.tr matches 1.. run function ischool04_plot:give_trident
execute as @a[scores={isch.drop.ch=1..},tag=pr.target] if score @s isch.drop.ch matches 1.. run function ischool04_plot:give_chestplate 
execute as @a[scores={isch.drop.le=1..},tag=pr.target] if score @s isch.drop.le matches 1.. run function ischool04_plot:give_leggings 
execute as @a[scores={isch.drop.bo=1..},tag=pr.target] if score @s isch.drop.bo matches 1.. run function ischool04_plot:give_boots



# Piglin motion?
execute as @a[y_rotation=135..225,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [0.0,0.5,-0.3]
execute as @a[y_rotation=-43..43,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [0.0,0.5,0.3]
execute as @a[y_rotation=-133..-45,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [0.3,0.5,0.0]
execute as @a[y_rotation=45..135,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] Motion set value [-0.3,0.5,0.0]
execute as @a[y_rotation=135..225,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1.5,limit=1,tag=pr.target] Motion set value [0.0,0.5,-0.3]
execute as @a[y_rotation=-43..43,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1.5,limit=1,tag=pr.target] Motion set value [0.0,0.5,0.3]
execute as @a[y_rotation=-133..-45,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1.5,limit=1,tag=pr.target] Motion set value [0.3,0.5,0.0]
execute as @a[y_rotation=45..135,tag=pr.target] if entity @s at @s at @e[tag=Rzg,tag=pr.target,sort=nearest,limit=1] run data modify entity @e[type=minecraft:zombified_piglin,distance=0..1.5,limit=1,tag=pr.target] Motion set value [-0.3,0.5,0.0]



# SFX
execute at @e[tag=Rzg,tag=pr.target,limit=1] at @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] run particle minecraft:crit ~ ~1.8 ~ 0.3 0.3 0.3 0 15 force @a[tag=pr.target]
execute at @e[tag=Rzg,tag=pr.target,limit=1] at @e[type=minecraft:zombified_piglin,distance=0..1.5,limit=1,tag=pr.target] run particle minecraft:crit ~ ~1.8 ~ 0.3 0.3 0.3 0 15 force @a[tag=pr.target]
execute at @e[tag=Rzg,tag=pr.target,limit=1] if entity @e[type=minecraft:piglin_brute,distance=0..1,limit=1,tag=pr.target] run playsound minecraft:entity.zoglin.attack master @a[tag=pr.target] ~ ~ ~ 1 1 1
execute at @e[tag=Rzg,tag=pr.target,limit=1] if entity @e[type=minecraft:zombified_piglin,distance=0..1.5,limit=1,tag=pr.target] run playsound minecraft:entity.zoglin.attack master @a[tag=pr.target] ~ ~ ~ 1 1 1


# Finish
execute as @a[tag=pr.target,limit=1] at @s if block ~ ~ ~ nether_portal run function pr:player/finish
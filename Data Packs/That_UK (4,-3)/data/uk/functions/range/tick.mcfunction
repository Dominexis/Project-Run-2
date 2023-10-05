# detect player entering room
execute as @a[tag=pr.target,scores={uk_range_detect=..1}] at @s if block ~ ~-2 ~ gold_block run scoreboard players add @a uk_range_detect 1

# give player bow
give @a[tag=pr.target,scores={uk_range_detect=2}] bow{HideFlags:255,Unbreakable:1b,Enchantments:[{}]} 1
scoreboard players add @a[tag=pr.target,scores={uk_range_detect=2}] uk_range_detect 1

# give player arrow
execute as @a[tag=pr.target,scores={uk_range_detect=3}] store result score @s uk_arrowCount run clear @s minecraft:arrow 0
execute as @a[tag=pr.target,scores={uk_range_detect=3}] if score @s uk_arrowCount matches 0 run item replace entity @s inventory.0 with minecraft:arrow 1
execute as @a[tag=pr.target,scores={uk_range_detect=3}] if score @s uk_arrowCount matches 2.. run clear @s minecraft:arrow
kill @e[type=item,tag=pr.target]

# make sure player doesnt drop bow
execute as @a[tag=pr.target,scores={uk_range_detect=3}] store result score @s uk_bowCount run clear @s minecraft:bow 0
execute as @a[tag=pr.target,scores={uk_range_detect=3}] if score @s uk_bowCount matches 0 run give @s minecraft:bow{HideFlags:255,Unbreakable:1b,Enchantments:[{}]} 1
execute as @a[tag=pr.target,scores={uk_range_detect=3}] if score @s uk_bowCount matches 2.. run clear @s minecraft:bow

# start targets
execute as @a[tag=pr.target,scores={uk_range_detect=3}] if score uktargetHolder uk_targets matches 0 run scoreboard players set uktargetHolder uk_targets 1

# check if player hit target

tp @e[type=marker,tag=uk.particle,tag=pr.target] @e[type=pillager,tag=pr.target,limit=1]
execute if entity @a[tag=pr.target,scores={uk_kill=1..}] run function uk:range/target_shot

# execute as @e[tag=uk_targets,tag=pr.target] store result score @s uk_targetHealth run data get entity @s Health 10
# execute if score @e[tag=uk_targets,tag=pr.target,limit=1] uk_targetHealth matches ..239 run tag @a[tag=pr.target,scores={uk_targetHit=1..}] add uk_targetHit
# execute if score @e[tag=uk_targets,tag=pr.target,limit=1] uk_targetHealth matches ..239 run tag @a[tag=pr.target,scores={uk_targetHit1=1..}] add uk_targetHit
# execute if score @e[tag=uk_targets,tag=pr.target,limit=1] uk_targetHealth matches ..239 run scoreboard players reset @a[tag=pr.target] uk_targetHit1
# execute if score @e[tag=uk_targets,tag=pr.target,limit=1] uk_targetHealth matches ..239 run function uk:range/target_shot
# execute as @e[tag=uk_targets,tag=pr.target] run data modify entity @s Health set value 24.0

scoreboard players set @a[tag=pr.target] uk_kill 0

# give player levitation

# execute if score uktargetHolder uk_targets matches 41.. run effect give @a[tag=pr.target,scores={uk_range_detect=3}] levitation infinite 10 true
execute if score uktargetHolder uk_targets matches 41.. run clear @a[tag=pr.target,scores={uk_range_detect=3}]
execute if score uktargetHolder uk_targets matches 41.. as @a[tag=pr.target,scores={uk_range_detect=3}] at @s run playsound minecraft:entity.player.levelup master @s
execute if score uktargetHolder uk_targets matches 41.. run scoreboard players set @a[tag=pr.target,scores={uk_range_detect=3}] uk_range_detect 4
execute if score uktargetHolder uk_targets matches 41.. run scoreboard players set uktargetHolder uk_targets 0

# remove levitation if player reached ceiling

execute positioned ~-40 -64 ~-40 run effect give @a[dx=80,dy=18,dz=80,tag=pr.target,scores={uk_range_detect=4}] levitation infinite 10 true
execute as @a[tag=pr.target] at @s if block ~ ~2 ~ yellow_stained_glass if block ~ ~-2 ~ lime_stained_glass run effect clear @s minecraft:levitation

# Give player bow

execute if block ~ ~-0.1 ~ red_concrete run tag @s add uk_has_bow
execute if entity @s[tag=uk_has_bow] store result score #item_count uk_value run clear @s bow 0
execute if entity @s[tag=uk_has_bow] if score #item_count uk_value matches 2.. run clear @s bow
execute if entity @s[tag=uk_has_bow] if score #item_count uk_value matches 0 run give @s minecraft:bow{HideFlags:255,Unbreakable:1b,Enchantments:[{}]}

execute if entity @s[tag=uk_has_bow] store result score #item_count uk_value run clear @s arrow 0
execute if entity @s[tag=uk_has_bow] if score #item_count uk_value matches 2.. run clear @s arrow
execute if entity @s[tag=uk_has_bow] if score #item_count uk_value matches 0 run give @s minecraft:arrow

clear @s[tag=!uk_has_bow] bow
clear @s[tag=!uk_has_bow] arrow



# Manage kill requirement

execute if entity @s[tag=!uk_kill_requirement,scores={uk_kill=7..}] run playsound minecraft:entity.player.levelup master @s
execute if entity @s[tag=!uk_kill_requirement,scores={uk_kill=7..}] positioned 428 42 -257 rotated -90 0 run function pr:player/checkpoint/mark_pos
tag @s[scores={uk_kill=7..}] add uk_kill_requirement



# Manage levitation

execute positioned ~-1 20 ~-1 run effect give @s[tag=uk_kill_requirement,dx=1,dy=19,dz=1] levitation 3 10 true
execute positioned ~-1 44 ~-1 run effect clear @s[tag=uk_kill_requirement,tag=!uk_code_success,dx=1,dy=10,dz=1] levitation
execute positioned ~-1 40 ~-1 run effect give @s[tag=uk_code_success,dx=1,dy=10,dz=1] levitation 3 20 true



# Code complete

execute if score @s uk_code matches 4.. run tag @s add uk_code_success
execute if score @s uk_code matches 4.. run tag @s remove uk_has_bow
execute if score @s uk_code matches 4.. run playsound minecraft:entity.player.levelup master @s
execute if score @s uk_code matches 4.. run scoreboard players set @s uk_code 0



# Kill

execute if block ~ ~-0.1 ~ black_stained_glass run kill @s



# Finish

execute if block ~ ~2 ~ oxidized_copper run function uk:finish
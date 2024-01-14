execute if score @s ykw.ecolocation matches 1.. if score @s ykw.cooldown matches ..0 run function ykw:player/emit_sound
execute if score @s ykw.ecolocation matches 1.. run scoreboard players set @s ykw.ecolocation 0

# Glowing
execute if score @s ykw.visible_for matches 0 run effect clear @s minecraft:glowing

# Counters
execute if score @s ykw.visible_for matches 0 run scoreboard players reset @s ykw.visible_for
execute if score @s ykw.visible_for matches 1.. run scoreboard players remove @s ykw.visible_for 1

execute if score @s ykw.cooldown matches 0 run scoreboard players reset @s ykw.cooldown
execute if score @s ykw.cooldown matches 1.. run scoreboard players remove @s ykw.cooldown 1

# Cooldown text
function pr:player/time/compute
function help:ca0b2e76887ab57f1b436ed0ea5990ae4762591ca26fcb2f74a855111aee578f
scoreboard players operation @s ykw.cooldown_s = @s ykw.cooldown
scoreboard players add @s ykw.cooldown_s 19
scoreboard players operation @s ykw.cooldown_s /= 20 ykw.cooldown_s

# Splash trigger
# execute if entity @s[tag=!in_water] if predicate ykw:entity/in_water run function ykw:events/splash
execute if entity @s[tag=!in_water] if predicate ykw:entity/in_water run function ykw:give_warden_tendrils
execute if entity @s[tag=!in_water] if predicate ykw:entity/in_water run tag @s add in_water
execute if entity @s[tag=in_water] unless predicate ykw:entity/in_water run tag @s remove in_water

# Darkness
execute if entity @s[y=43,dy=0] run function ykw:events/player_jump_start
execute if block ~ ~-1 ~ minecraft:barrier run function ykw:events/player_jump_start

# Dissable Q
execute at @s positioned ~ ~1 ~ as @e[type=minecraft:item,distance=..2,tag=pr.target] at @s run function ykw:player/return_item

# Tp
execute if entity @s[gamemode=!spectator] if block ~ ~-1 ~ minecraft:oxidized_copper run tp @s @e[type=minecraft:marker,tag=pr.target,tag=ykw.start,limit=1]
return 1
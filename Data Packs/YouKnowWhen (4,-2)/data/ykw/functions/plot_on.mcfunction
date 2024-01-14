# say Setup
execute as @e[type=minecraft:block_display,tag=pr.target] run data modify entity @s Glowing set value 0b

# Scores
scoreboard objectives add ykw.visible_for dummy
scoreboard players set default ykw.visible_for 100

scoreboard objectives add ykw.countup dummy

scoreboard objectives add ykw.cooldown dummy
scoreboard players set plot ykw.cooldown 20

scoreboard objectives add ykw.cooldown_s dummy
scoreboard players set 20 ykw.cooldown_s 20

# Team for color
team add ykw.color
team modify ykw.color color dark_aqua

scoreboard objectives add ykw.ecolocation minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set duration ykw.ecolocation 100

place template ykw:start ~-40 ~12 ~-24
place template ykw:start_right ~-40 ~12 ~23
place template ykw:center ~-24 ~12 ~-24
place template ykw:end_left ~-24 ~12 ~-40
place template ykw:end_right ~-24 ~12 ~24
place template ykw:end_front ~23 ~11 ~-24

summon minecraft:marker ~-28 ~31 ~3 {Tags:["ykw.start","ykw"]}
return 1
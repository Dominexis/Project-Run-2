execute if entity @s[tag=ykw.sound_src] run function ykw:sound_src/tick
execute if score @s ykw.visible_for matches 0 run data modify entity @s Glowing set value 0b

# Contdown
execute if score @s ykw.visible_for matches 0 run scoreboard players reset @s ykw.visible_for
execute if score @s ykw.visible_for matches 1.. run scoreboard players remove @s ykw.visible_for 1

# Countup
execute if score @s ykw.countup matches 0.. run scoreboard players add @s ykw.countup 1
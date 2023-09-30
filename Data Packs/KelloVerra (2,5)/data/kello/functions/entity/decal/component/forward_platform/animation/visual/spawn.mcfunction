
scoreboard players add @s kello.entity.timer 1

# execute if score @s kello.entity.timer matches 1 run say a
# execute if score @s kello.entity.timer matches 2 run say b
# execute if score @s kello.entity.timer matches 3 run say c

execute if score @s kello.entity.timer matches 4 on vehicle run tag @s add kello.despawnable
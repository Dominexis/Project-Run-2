
scoreboard players add @s kello.entity.timer 1

execute if score @s kello.entity.timer matches 4 on vehicle run tag @s add kello.despawnable
return 1
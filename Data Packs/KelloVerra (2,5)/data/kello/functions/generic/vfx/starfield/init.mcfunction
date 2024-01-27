tag @s add kello.verified

# execute if entity @s[tag=kello.level.1          ] run scoreboard players set @s kello.level.id 1
# execute if entity @s[tag=kello.level.2          ] run scoreboard players set @s kello.level.id 2
# execute if entity @s[tag=kello.level.3          ] run scoreboard players set @s kello.level.id 3
# execute if entity @s[tag=kello.level.3_branch   ] run scoreboard players set @s kello.level.id 3
# execute if entity @s[tag=kello.level.4          ] run scoreboard players set @s kello.level.id 4
# execute if entity @s[tag=kello.level.5          ] run scoreboard players set @s kello.level.id 5
# execute if entity @s[tag=kello.level.6          ] run scoreboard players set @s kello.level.id 6
# execute if entity @s[tag=kello.level.7          ] run scoreboard players set @s kello.level.id 7

scoreboard players operation @s kello.level.id = #local kello.level.id

scoreboard players set @s kello.level.var 0
return 1
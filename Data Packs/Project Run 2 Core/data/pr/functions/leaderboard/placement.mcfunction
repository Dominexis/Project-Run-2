# Target leaderboard entities

execute as @e[type=armor_stand,tag=pr.leaderboard] if score @s pr.plot = #plot pr.value run tag @s add pr.leaderboard_target







# Compute placement

scoreboard players set #placement pr.value 6
execute if score @s pr.time < @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1] pr.time run scoreboard players set #placement pr.value 5
execute if score @s pr.time < @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] pr.time run scoreboard players set #placement pr.value 4
execute if score @s pr.time < @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] pr.time run scoreboard players set #placement pr.value 3
execute if score @s pr.time < @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] pr.time run scoreboard players set #placement pr.value 2
execute if score @s pr.time < @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1] pr.time run scoreboard players set #placement pr.value 1







# Shuffle around names

execute if score #placement pr.value matches ..4 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1] ArmorItems[0].tag.leaderboard set from entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] ArmorItems[0].tag.leaderboard
execute if score #placement pr.value matches ..3 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] ArmorItems[0].tag.leaderboard set from entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] ArmorItems[0].tag.leaderboard
execute if score #placement pr.value matches ..2 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] ArmorItems[0].tag.leaderboard set from entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] ArmorItems[0].tag.leaderboard
execute if score #placement pr.value matches ..1 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] ArmorItems[0].tag.leaderboard set from entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1] ArmorItems[0].tag.leaderboard

execute if score #placement pr.value matches ..4 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1] pr.time = @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] pr.time
execute if score #placement pr.value matches ..3 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] pr.time = @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] pr.time
execute if score #placement pr.value matches ..2 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] pr.time = @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] pr.time
execute if score #placement pr.value matches ..1 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] pr.time = @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1] pr.time

execute if score #placement pr.value matches 1 run data modify storage pr:data tag.placement set value '{"text":"1st","color":"#ffb200","bold":true}'
execute if score #placement pr.value matches 2 run data modify storage pr:data tag.placement set value '{"text":"2nd","color":"#dc961c","bold":true}'
execute if score #placement pr.value matches 3 run data modify storage pr:data tag.placement set value '{"text":"3rd","color":"#c87b1f","bold":true}'
execute if score #placement pr.value matches 4 run data modify storage pr:data tag.placement set value '{"text":"4th","color":"#b35e1f","bold":true}'
execute if score #placement pr.value matches 5 run data modify storage pr:data tag.placement set value '{"text":"5th","color":"#954c1c","bold":true}'

setblock -56 -62 40 oak_sign{Text1:'["",{"selector":"@a[tag=pr.leaderboard_placement,limit=1]","color":"white"},{"text":" - ","color":"dark_gray"},{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]'}

execute if score #placement pr.value matches 1 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1] ArmorItems[0].tag.leaderboard set from block -56 -62 40 Text1
execute if score #placement pr.value matches 2 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] ArmorItems[0].tag.leaderboard set from block -56 -62 40 Text1
execute if score #placement pr.value matches 3 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] ArmorItems[0].tag.leaderboard set from block -56 -62 40 Text1
execute if score #placement pr.value matches 4 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] ArmorItems[0].tag.leaderboard set from block -56 -62 40 Text1
execute if score #placement pr.value matches 5 run data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1] ArmorItems[0].tag.leaderboard set from block -56 -62 40 Text1

execute if score #placement pr.value matches 1 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1] pr.time = @s pr.time
execute if score #placement pr.value matches 2 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] pr.time = @s pr.time
execute if score #placement pr.value matches 3 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] pr.time = @s pr.time
execute if score #placement pr.value matches 4 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] pr.time = @s pr.time
execute if score #placement pr.value matches 5 run scoreboard players operation @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1] pr.time = @s pr.time







# Resolve names

data modify block -56 -62 40 Text1 set value '["",{"text":"1st","color":"#ffb200","bold":true},{"text":" - ","color":"dark_gray"},{"nbt":"ArmorItems[0].tag.leaderboard","entity":"@e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1]","interpret":true}]'
data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.first ,limit=1] CustomName set from block -56 -62 40 Text1
data modify block -56 -62 40 Text1 set value '["",{"text":"2nd","color":"#dc961c","bold":true},{"text":" - ","color":"dark_gray"},{"nbt":"ArmorItems[0].tag.leaderboard","entity":"@e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1]","interpret":true}]'
data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.second,limit=1] CustomName set from block -56 -62 40 Text1
data modify block -56 -62 40 Text1 set value '["",{"text":"3rd","color":"#c87b1f","bold":true},{"text":" - ","color":"dark_gray"},{"nbt":"ArmorItems[0].tag.leaderboard","entity":"@e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1]","interpret":true}]'
data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.third ,limit=1] CustomName set from block -56 -62 40 Text1
data modify block -56 -62 40 Text1 set value '["",{"text":"4th","color":"#b35e1f","bold":true},{"text":" - ","color":"dark_gray"},{"nbt":"ArmorItems[0].tag.leaderboard","entity":"@e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1]","interpret":true}]'
data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fourth,limit=1] CustomName set from block -56 -62 40 Text1
data modify block -56 -62 40 Text1 set value '["",{"text":"5th","color":"#954c1c","bold":true},{"text":" - ","color":"dark_gray"},{"nbt":"ArmorItems[0].tag.leaderboard","entity":"@e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1]","interpret":true}]'
data modify entity @e[type=armor_stand,tag=pr.leaderboard,tag=pr.leaderboard_target,tag=pr.fifth ,limit=1] CustomName set from block -56 -62 40 Text1







# Remove sign

setblock -56 -62 40 air







# Tell the player about it

function pr:leaderboard/name

execute if score #placement pr.value matches 1 run tellraw @s ["",{"text":"Congratulations! You got 1st on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 2 run tellraw @s ["",{"text":"Congratulations! You got 2nd on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 3 run tellraw @s ["",{"text":"Congratulations! You got 3rd on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 4 run tellraw @s ["",{"text":"Congratulations! You got 4th on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 5 run tellraw @s ["",{"text":"Congratulations! You got 5th on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]







# Remove target tag

tag @e[type=armor_stand,tag=pr.leaderboard] remove pr.leaderboard_target
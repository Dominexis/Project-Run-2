# Execute function

execute as @e[type=text_display,tag=pr.leaderboard.root] if score @s pr.plot = #plot pr.value at @s run function pr:leaderboard/placement/apply







# Tell the player about it

function pr:leaderboard/name

execute if score #placement pr.value matches 1 run tellraw @s ["",{"text":"Congratulations! You got 1st on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 2 run tellraw @s ["",{"text":"Congratulations! You got 2nd on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 3 run tellraw @s ["",{"text":"Congratulations! You got 3rd on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 4 run tellraw @s ["",{"text":"Congratulations! You got 4th on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
execute if score #placement pr.value matches 5 run tellraw @s ["",{"text":"Congratulations! You got 5th on the ","color":"gold"},{"nbt":"tag.leaderboard_name","storage":"pr:data","interpret":true,"color":"gold"},{"text":" Leaderboard!","color":"gold"}]
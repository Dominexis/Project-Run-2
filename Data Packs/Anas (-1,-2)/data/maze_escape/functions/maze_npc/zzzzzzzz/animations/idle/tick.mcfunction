execute if score @s aj.tween_time matches 1.. run function maze_escape:maze_npc/zzzzzzzz/animations/idle/tick_tween
execute unless score @s aj.tween_time matches 1.. run function maze_escape:maze_npc/zzzzzzzz/animations/idle/tick_animation
return 1
function help:8166fb0ef9612c234c44082078e11c263520dcc2e56edfbe7ce2230f07045b21

execute if entity @s[tag=kello.trigger_flee,tag=!kello.player.grappling,tag=!kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 1
return 1
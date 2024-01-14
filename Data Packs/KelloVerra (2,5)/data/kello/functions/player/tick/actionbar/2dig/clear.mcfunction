function help:badc2d3aa376ab884e7bdffe1ff0058bb09888fe1f61c21d735617e9c461be82

#execute if entity @s[tag=kello.player.grappling,tag=!kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 1
execute if entity @s[tag=kello.trigger_flee,tag=!kello.player.grappling,tag=!kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 1
return 1
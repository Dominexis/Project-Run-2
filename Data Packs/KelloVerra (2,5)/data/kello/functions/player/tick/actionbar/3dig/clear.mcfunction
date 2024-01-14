function help:7cbdc1e11771fb744499f360573925a3b031a7d35d4194e077cb0997e44e6460

execute if entity @s[tag=kello.trigger_flee,tag=!kello.player.grappling,tag=!kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 1
return 1
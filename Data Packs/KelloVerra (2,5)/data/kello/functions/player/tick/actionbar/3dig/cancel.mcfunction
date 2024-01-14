function help:83b382417d8b9816db2a07bdd7a1867508c1e3875659cc3c588547b9fc6576fd

execute if entity @s[tag=!kello.player.grappling] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=!kello.player.grappling,tag=kello.riding] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=!kello.player.grappling,tag=!kello.riding] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 0
return 1
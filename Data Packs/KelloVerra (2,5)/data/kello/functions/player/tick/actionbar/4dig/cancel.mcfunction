function help:433420240e1a1b422699a08e25710378116c7d795d5470dbd1d5102d8ff01ef9

execute if entity @s[tag=!kello.player.grappling] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=!kello.player.grappling,tag=kello.riding] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=!kello.player.grappling,tag=!kello.riding] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 0
return 1
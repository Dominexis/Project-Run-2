function help:24a05406119fe4b7b36e0a3617c3bb86dfd3ee0df3db9e7544a273bc846febae

execute if entity @s[tag=!kello.player.grappling] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=!kello.player.grappling,tag=kello.riding] run scoreboard players set @s kello.entity.state 2
execute if entity @s[tag=!kello.player.grappling,tag=!kello.riding] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 0
return 1
function help:5339695e374133914eec4c5b315fa8e2647d59b0acee353015b1adfecf245326

execute if entity @s[tag=!kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 0
return 1
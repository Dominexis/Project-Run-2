function help:494c37c143c3d7fbac889788c8bb8aea4c07f81d00e15950cb8787be2036b036

execute if entity @s[tag=!kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 0
return 1
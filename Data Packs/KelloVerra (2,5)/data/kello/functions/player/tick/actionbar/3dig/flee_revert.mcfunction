function help:625a3870ff4c3a3ebe94a187d8d27a094871f3f063361f28f4a91517b3fad7c8

execute if entity @s[tag=!kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_reverting] run scoreboard players set @s kello.entity.state 0
return 1
execute unless score @s kello.player.cog.r matches 2..3 run scoreboard players set @s kello.player.cog.r 3
scoreboard players add @s kello.entity.state 0
tag @s remove kello.player.flee_revertable
return 1
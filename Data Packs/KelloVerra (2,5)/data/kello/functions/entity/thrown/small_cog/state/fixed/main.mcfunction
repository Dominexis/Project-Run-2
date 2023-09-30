# Teleport

scoreboard players remove @s kello.entity.timer 1
scoreboard players remove @s[scores={kello.decal.timer=1..}] kello.decal.timer 1





# Set player state

execute as @a[tag=pr.target,tag=kello.entity.player.target] unless score @s kello.player.cog.r matches 2..3 run scoreboard players set @s kello.player.cog.r 2
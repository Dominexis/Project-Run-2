# Set state

scoreboard players set #state kello.value 1



# VFX

particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 12 normal
particle minecraft:block_marker barrier ^ ^ ^-.75 0 0 0 1 1 force @p[tag=pr.target,tag=kello.entity.player.target]



# SFX

execute as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_recoil/small_fail
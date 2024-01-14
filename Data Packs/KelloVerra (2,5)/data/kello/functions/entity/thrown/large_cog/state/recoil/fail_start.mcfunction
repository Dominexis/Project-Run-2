# Set state

scoreboard players set #state kello.value 1



# VFX

particle minecraft:large_smoke ^ ^ ^-1 0.1 0.1 0.1 0.05 12 normal
particle minecraft:block_marker minecraft:barrier ^ ^ ^-.75 0 0 0 1 1 force @p[tag=pr.target,tag=kello.entity.player.target]




# SFX

execute as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_recoil/large_fail
return 1
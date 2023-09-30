# Set state

execute if score #state kello.value matches 1..4 run return -1

scoreboard players set #state kello.value 1



# execute if score @s[tag=!kello.static] kello.entity.state matches 3 run tag @s add kello.state.force_recoil
# execute if score @s[tag=!kello.static] kello.entity.state matches 3 run function kello:entity/thrown/large_cog/state/recoil/force_start



# VFX

particle large_smoke ^ ^ ^-1 0.1 0.1 0.1 0.05 4 normal
particle minecraft:block_marker barrier ^ ^ ^-.75 0 0 0 1 1 force @p[tag=pr.target,tag=kello.entity.player.target]




# SFX

execute as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_recoil/large_fail
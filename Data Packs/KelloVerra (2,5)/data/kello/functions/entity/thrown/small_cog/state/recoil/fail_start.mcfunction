# Set state

scoreboard players set #state kello.value 1


# execute if score @s[tag=!kello.static] kello.entity.state matches 3 run tag @s add kello.state.force_recoil
# execute if score @s[tag=!kello.static] kello.entity.state matches 3 run function kello:entity/thrown/small_cog/state/recoil/force_start




# VFX

particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 4 normal
particle minecraft:block_marker barrier ^ ^ ^-.75 0 0 0 1 1 force @p[tag=pr.target,tag=kello.entity.player.target]



# SFX

execute as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:generic/sfx/cog_recoil/small_fail

#execute positioned ^ ^ ^-1 if entity @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,distance=..2] run function kello:entity/thrown/small_cog/state/fixed/start
#execute positioned ^ ^ ^2.5 if entity @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,distance=..1.5] run function kello:entity/thrown/small_cog/state/fixed/start
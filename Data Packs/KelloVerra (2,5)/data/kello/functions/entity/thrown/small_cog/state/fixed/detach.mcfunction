# SFX

function kello:generic/sfx/cog_recoil/detach_amb
execute as @a[tag=pr.target,tag=kello.entity.player.target] at @s run function kello:entity/thrown/small_cog/state/fixed/as_player_detach



# Detach

tag @s add kello.fixed.target
execute as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.small,tag=kello.attach,distance=..12,sort=nearest,limit=1] at @s run function kello:entity/thrown/small_cog/state/fixed/as_detach
tag @s remove kello.fixed.target

execute unless score #state kello.value matches 1 run function kello:entity/thrown/small_cog/state/recoil/start
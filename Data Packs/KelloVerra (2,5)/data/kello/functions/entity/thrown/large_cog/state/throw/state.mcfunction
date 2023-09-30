# Interactions

execute if entity @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large,distance=..1.25] run function kello:entity/thrown/large_cog/state/fixed/start
execute if entity @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.launchpad,distance=..1.875] run function kello:entity/thrown/large_cog/state/launcher/start





# Recoil

execute unless score #state kello.value matches 1..4 run function kello:entity/thrown/large_cog/state/throw/fail_check
execute unless score #state kello.value matches 1..4 unless entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..16] run function kello:entity/thrown/large_cog/state/recoil/start

execute unless score #state kello.value matches 1..4 if entity @s[tag=kello.state.force_recoil] run function kello:entity/thrown/large_cog/state/recoil/start



# Detect if player log out / leave plot

execute if score #logout_trigger kello.value matches 1 run function kello:entity/thrown/large_cog/state/despawn/pre_start

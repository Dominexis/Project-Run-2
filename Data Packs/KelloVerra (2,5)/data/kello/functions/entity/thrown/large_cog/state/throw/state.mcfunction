# Interactions

execute if entity @e[type=minecraft:item_display,distance=..1.25,tag=pr.target,tag=!pr.ignore,tag=kello.decal,tag=kello.empty,tag=kello.entity.type.cogwheel_shaft,tag=kello.entity.type.large] run function kello:entity/thrown/large_cog/state/fixed/start
execute if entity @e[type=minecraft:item_display,distance=..1.875,tag=pr.target,tag=!pr.ignore,tag=kello.entity.type.launchpad,scores={kello.entity.state=..1}] run function kello:entity/thrown/large_cog/state/launcher/start





# Recoil

execute unless score #state kello.value matches 1..4 run function kello:entity/thrown/large_cog/state/throw/fail_check
execute unless score #state kello.value matches 1..4 unless entity @p[distance=..16,tag=pr.target,tag=kello.entity.player.target] run function kello:entity/thrown/large_cog/state/recoil/start

execute unless score #state kello.value matches 1..4 if entity @s[tag=kello.state.force_recoil] run function kello:entity/thrown/large_cog/state/recoil/start



# Detect if player log out / leave plot

execute if score #logout_trigger kello.value matches 1 run function kello:entity/thrown/large_cog/state/despawn/pre_start

execute if score #state kello.value matches 1 run function kello:entity/thrown/large_cog/state/recoil/state
return 1
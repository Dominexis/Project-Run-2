# Recoil

#execute unless entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..32] run function kello:entity/thrown/small_cog/state/fixed/detach
execute if score @s kello.entity.timer matches ..0 run function kello:entity/thrown/small_cog/state/fixed/detach
execute if score @s kello.decal.timer matches ..0 if entity @s[tag=kello.state.force_recoil] run function kello:entity/thrown/small_cog/state/recoil/start



# Detect if player log out / leave plot

execute if score #logout_trigger kello.value matches 1 run function kello:entity/thrown/small_cog/state/despawn/pre_start
return 1
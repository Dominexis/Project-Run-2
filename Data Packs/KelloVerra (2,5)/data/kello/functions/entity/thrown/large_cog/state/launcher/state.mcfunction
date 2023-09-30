# Recoil

#execute unless entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..32] run function kello:entity/thrown/large_cog/state/launcher/detach
execute if entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..2.5,predicate=!kello:midair] run function kello:entity/thrown/large_cog/state/launcher/detach
execute if entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..2.95,predicate=kello:midair] run function kello:entity/thrown/large_cog/state/launcher/detach
execute if entity @s[tag=kello.state.force_recoil] run function kello:entity/thrown/large_cog/state/recoil/start




# Detect if player log out / leave plot

execute if score #logout_trigger kello.value matches 1 run function kello:entity/thrown/large_cog/state/despawn/pre_start
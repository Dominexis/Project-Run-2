# Recoil

#execute unless entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..32] run function kello:entity/thrown/small_cog/state/puller/detach
execute if entity @p[tag=pr.target,tag=kello.entity.player.target,distance=..2] run function kello:entity/thrown/small_cog/state/puller/detach
execute if entity @p[tag=pr.target,tag=kello.entity.player.target,tag=!kello.riding] run function kello:entity/thrown/small_cog/state/puller/detach



# Detect if player log out / leave plot

execute if score #logout_trigger kello.value matches 1 run function kello:entity/thrown/small_cog/state/despawn/pre_start
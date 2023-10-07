# Recoil

execute as @p[tag=pr.target,tag=kello.entity.player.target] at @s anchored eyes run summon marker ^ ^ ^1.8 {Tags:["kello.entity.aim","kello.entity.target_kill"]}
execute positioned ~ ~-1 ~ if entity @e[type=marker,tag=kello.entity.aim,distance=..3.75] positioned ~ ~1 ~ run function kello:entity/thrown/small_cog/state/pickup/start



# Detect if player log out / leave plot

execute if score #logout_trigger kello.value matches 1 run function kello:entity/thrown/small_cog/state/despawn/pre_start
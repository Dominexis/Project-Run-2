scoreboard players set #boolean kello.value 0

execute store success score #boolean kello.value if entity @p[tag=pr.target,tag=kello.entity.player.target]

execute if score #boolean kello.value matches 0 run function kello:entity/thrown/large_cog/state/despawn/start
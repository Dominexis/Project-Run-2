# Conditions

scoreboard players set #iteration kello.value 64




# Iteration and some entity id logics

scoreboard players set #boolean1 kello.value 0
scoreboard players add #global kello.entity.id 1
function kello:entity/decal/component/gate_0/spawn/iter/trunk
execute if score #boolean1 kello.value matches 0 run scoreboard players remove #global kello.entity.id 1





# Flower

#execute as @e[type=#kello:generic/display,tag=kello.entity.target.spawn] run function kello:entity/decal/component/chain_platform/spawn/score
# tellraw @p [{"text":"> Using Selected ID => ","color":"gray"},{"score":{"name":"#selected","objective":"kello.decal.id"},"color":"white"}]
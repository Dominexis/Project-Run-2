# Verify found players

scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id
function kello:entity/checkpoint/state/checkpoint/entity/get_players

execute if entity @s[tag=kello.checkpoint.active] run function kello:entity/checkpoint/state/checkpoint/entity/deactivate/verify






# Activate childrens

execute if score #found_players kello.value matches 1.. as @e[type=#kello:generic/system,tag=pr.target,tag=kello.entity.ticking,tag=!kello.checkpoint.active] if score @s kello.entity.checkpoint.id = #local kello.entity.checkpoint.id run function kello:entity/checkpoint/state/checkpoint/entity/active
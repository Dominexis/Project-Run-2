# Scores

scoreboard players set #return kello.value 0


# Verify found players

scoreboard players operation #local kello.entity.checkpoint.id = @s kello.entity.checkpoint.id
scoreboard players operation #local kello.player.checkpoint.id = @s kello.entity.checkpoint.id
function kello:entity/checkpoint/state/checkpoint/entity/get_players

execute if score #return kello.value matches 0 if score #found_players kello.value matches 0 if entity @s[tag=kello.checkpoint.is_loaded] run function kello:entity/checkpoint/state/checkpoint/entity/deactivate/main






# Activate childrens

execute if score #return kello.value matches 0 if score #found_players kello.value matches 1.. as @e[type=#kello:generic/system,tag=pr.target,tag=kello.entity.ticking,tag=!kello.checkpoint.is_loaded] if score @s kello.entity.checkpoint.id = #local kello.entity.checkpoint.id run function kello:entity/checkpoint/state/checkpoint/entity/active

# ! update individual complete
# ! total players found {score #found_players kello.value}
# ! checkpoint id {score #local kello.entity.checkpoint.id}
# ! player checkpoint id {score #local kello.player.checkpoint.id}
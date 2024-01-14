# Push scores

scoreboard players operation #local kello.entity.id = @s kello.entity.id



# Target TODO: DEPRECATED

# execute if score @s kello.entity.link matches 1 as @e[type=#kello:generic/system,tag=pr.target,tag=!pr.ignore,tag=kello.entity,distance=..128] if score @s kello.entity.id = #local kello.entity.id run tag @s add kello.entity.target

# Check the entity's owner

execute if score @s kello.entity.owner matches 1 run function kello:entity/process/owner






# Tick

execute if score @s kello.entity.lifetime = @s kello.entity.lifetime run scoreboard players remove @s[scores={kello.entity.lifetime=1..}] kello.entity.lifetime 1
function kello:entity/verify/main




# Untarget

execute if score @s kello.entity.owner matches 1 run tag @a[tag=pr.target,tag=kello.entity.player.target] remove kello.entity.player.target
return 1
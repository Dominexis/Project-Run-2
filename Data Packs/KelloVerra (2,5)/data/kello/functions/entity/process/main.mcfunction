# Push scores

scoreboard players operation #local kello.entity.id = @s kello.entity.id



# Check the entity's owner

execute if score @s kello.entity.owner matches 1 run function kello:entity/process/owner






# Tick

execute if score @s kello.entity.lifetime = @s kello.entity.lifetime run scoreboard players remove @s[scores={kello.entity.lifetime=1..}] kello.entity.lifetime 1
function kello:entity/verify/main




# Untarget

execute if score @s kello.entity.owner matches 1 run tag @a[tag=pr.target,tag=kello.entity.player.target] remove kello.entity.player.target
return 1
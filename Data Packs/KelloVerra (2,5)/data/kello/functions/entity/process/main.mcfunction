# Push scores

#scoreboard players operation #entity_air_toggle_bool kello.value = @s kello.entity.air_toggle
#scoreboard players operation #entity_relationship kello.value = @s kello.entity.relationship
#scoreboard players operation #entity_owner kello.value = @s kello.entity.owner

scoreboard players operation #local kello.entity.id = @s kello.entity.id



# Target

execute if score @s kello.entity.link matches 1 as @e[type=#kello:generic/system,tag=pr.target,tag=!kello.ignore,tag=kello.entity,distance=..128] if score @s kello.entity.id = #local kello.entity.id run tag @s add kello.entity.target

# TODO: DEPRECATED
#execute if score #entity_relationship kello.value matches 1.. run function kello:entity/process/relationship/main


execute if score @s kello.entity.owner matches 1 run function kello:entity/process/owner






# Tick

execute if score @s kello.entity.lifetime = @s kello.entity.lifetime run scoreboard players remove @s[scores={kello.entity.lifetime=1..}] kello.entity.lifetime 1
function kello:entity/verify/main





# Air toggle area effect cloud
# TODO: DEPRECATED - REMOVE ON PACKAGE

#execute if score #entity_air_toggle_bool kello.value matches 1 at @s as @e[type=area_effect_cloud,tag=kello.entity.air_toggle,tag=kello.entity.target] store result entity @s Air short 1 run scoreboard players get #air_toggle_timer kello.value





# Untarget

execute if score @s kello.entity.link matches 1 run tag @e[type=#kello:generic/system,tag=pr.target,tag=kello.entity.target   ] remove kello.entity.target
#tag @e[tag=kello.entity.parent.target                      ] remove kello.entity.parent.target
#tag @e[tag=kello.entity.child.target                       ] remove kello.entity.child.target
execute if score @s kello.entity.owner matches 1 run tag @a[tag=pr.target,tag=kello.entity.player.target                       ] remove kello.entity.player.target
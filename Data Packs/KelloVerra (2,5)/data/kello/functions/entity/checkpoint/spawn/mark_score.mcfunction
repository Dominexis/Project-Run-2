# Assign scores

data modify storage kello:data tag.Owner set from entity @s UUID

execute as @e[type=item_display,tag=kello.entity.type.checkpoint,tag=kello.entity.part.main,sort=nearest,limit=1] positioned as @s run function kello:entity/checkpoint/spawn/mark_score_ref


# tellraw @p [{"text":"[AncientApparatus] Succesfully instantiated a checkpoint marker, using spawn_local checkpoint ID => ","color":"gray"},{"score":{"name":"#spawn_local","objective":"kello.entity.checkpoint.id"},"color":"white"},{"text":" and also using a spawn_local entity ID => ","color":"gray"},{"score":{"name":"#spawn_local","objective":"kello.entity.id"},"color":"white"}]
# tellraw @p [{"text":"[AncientApparatus] Succesfully instantiated a checkpoint marker"}]

data modify entity @s Tags set value ["kello.entity","kello.entity.type.checkpoint","kello.entity.part.mark","kello.exclude"]
scoreboard players operation @s kello.entity.checkpoint.id = #spawn_local kello.entity.checkpoint.id

tp @s ~ ~ ~ ~ ~

scoreboard players set #boolean kello.value 1
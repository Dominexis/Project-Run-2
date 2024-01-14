# Assign scores

data modify storage kello:data tag.Owner set from entity @s UUID

data modify entity @s Tags set value ["kello.entity","kello.entity.type.checkpoint","kello.entity.part.mark","kello.exclude"]
tp @s ~ ~ ~ ~ ~

tag @s add kello.target.checkpoint_mark
execute as @e[type=minecraft:item_display,tag=kello.entity.type.checkpoint,tag=kello.entity.part.main,sort=nearest,limit=1] positioned as @s run function kello:entity/checkpoint/spawn/mark_score_ref
tag @s remove kello.target.checkpoint_mark

scoreboard players operation @s kello.entity.checkpoint.id = #spawn_local kello.entity.checkpoint.id


scoreboard players set #boolean kello.value 1
return 1
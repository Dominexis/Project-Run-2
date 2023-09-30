execute store result entity @s Pos[0] double 0.001 run scoreboard players get #pos_x kello.value
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #pos_z kello.value
scoreboard players remove #iteration1 kello.value 1
tag @s add kello.entity.chain_processed
execute if score #iteration1 kello.value matches 1.. positioned ~ ~1 ~ as @e[type=item_display,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.chain_platform,tag=kello.entity.part.chain,tag=!kello.entity.chain_processed,distance=...005,sort=nearest,limit=1] run function kello:entity/decal/component/chain_platform/spawn/iter/leaf/chain/iter_s
tag @s remove kello.entity.chain_processed
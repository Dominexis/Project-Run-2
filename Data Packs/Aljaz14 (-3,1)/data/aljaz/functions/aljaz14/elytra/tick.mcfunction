tag @a[tag=pr.target] remove hasElytra
tag @a[tag=pr.target,nbt={Inventory:[{id:"minecraft:elytra",Slot:102b,tag:{tag:{map:1}}}]}] add hasElytra

execute at @e[type=item,tag=pickup,tag=pr.target] as @a[tag=pr.target,tag=!hasElytra,distance=..1] at @s run function aljaz:aljaz14/elytra/pickup
execute positioned ~7 ~-49 ~-22 run clear @a[dx=24,dy=12,dz=6,tag=hasElytra,tag=pr.target] minecraft:elytra{tag:{map:1}}
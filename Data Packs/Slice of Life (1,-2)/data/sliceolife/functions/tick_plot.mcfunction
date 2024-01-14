tag @a[tag=pr.target] remove pr.hide_timer
# execute as @a[tag=pr.target] at @s if entity @s[predicate=sliceolife:oncheckpoint] run function sliceolife:checkpoint
execute as @a[tag=pr.target,scores={sliceoflife.carrotonastick=1..}] run function sliceolife:gotocp
execute positioned ~6 ~-32 ~-38 if block ~ ~ ~ minecraft:stone_button[powered=true] as @a[distance=..4,tag=pr.target] run function sliceolife:potioneffects
return 1
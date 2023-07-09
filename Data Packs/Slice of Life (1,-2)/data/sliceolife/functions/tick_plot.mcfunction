tag @a[tag=pr.target] remove pr.hide_timer
execute as @a[tag=pr.target] at @s if entity @s[predicate=sliceolife:oncheckpoint] run function sliceolife:checkpoint
execute as @a[tag=pr.target,scores={sliceoflife.carrotonastick=1..}] run function sliceolife:gotocp
execute positioned ~5 ~-31 ~-23 if block ~ ~ ~ stone_button[powered=true] as @a[tag=pr.target,distance=..4] run function sliceolife:potioneffects
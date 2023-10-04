# This function will run every tick while players are in your plot on the center block at Y=0



##loyalty trident

#giving loyalty trident
execute positioned ~-4 ~-41.8 ~34 as @a[tag=pr.target,distance=..2] if score @s eelaa_tridents matches 0 at @s if block ~ ~-0.5 ~ diamond_block run function eelaa:loyalty/give

#checking for loyalty trident
execute as @a[tag=pr.target] if score @s eelaa_tridents matches 2 store result score @s eelaa_item_count run clear @s trident 0
# execute as @a[tag=pr.target,scores={eelaa_item_count=0}] if score @s eelaa_tridents matches 2 run give @s trident{display:{Name:'{"text":"Loyalty","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:10s}]}
execute as @a[tag=pr.target,scores={eelaa_item_count=0}] if score @s eelaa_tridents matches 2 run give @s trident{display:{Name:'{"text":"Loyalty","italic":false}'},Unbreakable:1b,Enchantments:[{}]}
execute as @a[tag=pr.target,scores={eelaa_item_count=2..}] if score @s eelaa_tridents matches 2 run clear @s trident



##riptide trident

#giving riptide trident
execute positioned ~36 ~-59.8 ~15 as @a[tag=pr.target,distance=..2] if score @s eelaa_tridents matches 0 at @s if block ~ ~-0.5 ~ diamond_block run function eelaa:riptide/give

#checking for riptide trident
execute as @a[tag=pr.target] if score @s eelaa_tridents matches 1 store result score @s eelaa_item_count run clear @s trident 0
execute as @a[tag=pr.target,scores={eelaa_item_count=0}] if score @s eelaa_tridents matches 1 run give @s trident{display:{Name:'{"text":"Riptide","italic":false}'},Unbreakable:1b,Enchantments:[{id:"minecraft:riptide",lvl:1s}]}
execute as @a[tag=pr.target,scores={eelaa_item_count=2..}] if score @s eelaa_tridents matches 1 run clear @s trident



##massacre

#killing thrown out tridents
kill @e[tag=pr.target,type=item,tag=!eelaa_trident]



##ice snake

#ice snake activation
execute if score #eelaa eelaa_tridents matches 5 positioned ~ ~ ~ run function eelaa:ice/activate

#ice snake reversion
execute positioned ~-38 ~-2 ~-38 unless entity @a[tag=pr.target,dx=13,dy=14,dz=17] positioned ~38 ~2 ~38 run fill ~-24 ~-3 ~-38 ~-36 ~14 ~-16 ice replace water



##checkpoints

#riptide checkpoint
execute as @a[tag=pr.target,tag=!eelaa_onplate] if score @s eelaa_tridents matches 1 at @s if block ~ ~ ~ light_weighted_pressure_plate run function eelaa:checkpoint/riptide
execute as @a[tag=pr.target,tag=eelaa_onplate] if score @s eelaa_tridents matches 1 at @s unless block ~ ~ ~ light_weighted_pressure_plate run tag @s remove eelaa_onplate

#loyalty checkpoint
execute as @a[tag=pr.target,tag=!eelaa_onplate] if score @s eelaa_tridents matches 2 at @s if block ~ ~ ~ heavy_weighted_pressure_plate run function eelaa:checkpoint/loyalty
execute as @a[tag=pr.target,tag=eelaa_onplate] if score @s eelaa_tridents matches 2 at @s unless block ~ ~ ~ heavy_weighted_pressure_plate run tag @s remove eelaa_onplate




# Kill tridents that ought not to exist

execute as @e[type=trident,tag=pr.target,tag=!inGround] store result score @s eelaa_tridents run data get entity @s inGround
tag @e[type=trident,tag=pr.target,scores={eelaa_tridents=1}] add inGround
scoreboard players add @e[type=trident,tag=pr.target,tag=inGround] eelaa_tridents_timer 1
kill @e[type=trident,tag=pr.target,tag=inGround,scores={eelaa_tridents_timer=30..}]



effect give @a[tag=pr.target] weakness infinite 9 true
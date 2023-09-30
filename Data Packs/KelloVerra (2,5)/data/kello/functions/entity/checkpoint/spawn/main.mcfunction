# Summon entity(ies)

scoreboard players add #global kello.entity.id 1
execute unless score #uninstantiate kello.value matches 1 run scoreboard players add #global kello.entity.checkpoint.id 1

# execute rotated 0 0 align xyz positioned ~.5 ~ ~.5 summon marker run function kello:entity/checkpoint/spawn/score



scoreboard players operation #animation aj.i = $aj.checkpoint_flag.animation.idle aj.id
execute rotated 0 0 align xyz positioned ~.5 ~ ~.5 run function animated_java:checkpoint_flag/summon
execute as @e[type=item_display,distance=..4,tag=kello.entity.checkpoint_new] run function kello:entity/checkpoint/spawn/score
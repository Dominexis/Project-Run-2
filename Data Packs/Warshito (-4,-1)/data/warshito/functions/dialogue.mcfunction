# The Start dialogue

execute as @a[tag=pr.target,tag=house] at @s if block ~ ~-1 ~ minecraft:dark_oak_slab[type=double] run tag @s add dialogue

scoreboard players add @a[tag=pr.target,tag=dialogue] warshito.DialogueTicks 1

tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=1}] [{"text":"<","type":"text"},{"text":"Warshito","color":"dark_green","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},{"text":"Hey! You! Over there!","type":"text"}]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=41}] [{"text":"<","type":"text"},{"text":"Warshito","color":"dark_green","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},{"text":"Can you help us? The ","type":"text"},{"text":"c","color":"red","bold":true,"type":"text"},{"text":"o","color":"yellow","bold":true,"type":"text"},{"text":"l","color":"green","bold":true,"type":"text"},{"text":"o","color":"green","bold":true,"type":"text"},{"text":"r","color":"aqua","bold":true,"type":"text"},{"text":" o","color":"dark_blue","bold":true,"type":"text"},{"text":"r","color":"#DE08FF","bold":true,"type":"text"},{"text":"b","color":"#DE08FF","bold":true,"type":"text"},{"text":" has been lost","color":"white","type":"text"}]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=81}] [{"text":"<","type":"text"},{"text":"Warshito","color":"dark_green","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},{"text":"You have to travel to another dimension, where the colors are separated. You will have one color assigned, and you can only step on your color","type":"text"}]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=161}] [{"text":"<","type":"text"},{"text":"Warshito","color":"dark_green","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},{"text":"You'll figure out the rest. Good luck!","type":"text"}]

execute if entity @a[tag=pr.target,scores={warshito.DialogueTicks=160..}] run fill ~-1 ~65 ~35 ~-1 ~68 ~33 minecraft:air destroy
tag @a[tag=pr.target,scores={warshito.DialogueTicks=360..}] remove dialogue
scoreboard players set @a[tag=pr.target,scores={warshito.DialogueTicks=360..}] warshito.DialogueTicks 0


execute as @a[tag=pr.target,tag=house] at @s if block ~ ~-1 ~ minecraft:dark_oak_slab[type=top] run tag @s add dialogue2

tellraw @a[tag=pr.target,tag=!D_finished,tag=dialogue2] [{"text":"<","type":"text"},{"text":"Jalafito","color":"dark_purple","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},{"text":"Hurry up! If you don't get it in time, it will go out of control!","type":"text"}]

tag @a[tag=pr.target,tag=dialogue2] add D_finished
tag @a[tag=pr.target,tag=dialogue2] remove dialogue2

# End Gateway
execute as @a[tag=pr.target] at @s if block ~-0.5 ~ ~ minecraft:end_gateway run tag @s add Gateway
tp @a[tag=pr.target,tag=Gateway] ~0 ~-58 ~36 180 0
tag @a[tag=pr.target,tag=Gateway] remove Gateway
return 1
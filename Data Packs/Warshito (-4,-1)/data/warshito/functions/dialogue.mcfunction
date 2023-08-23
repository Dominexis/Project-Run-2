# The Start dialogue

execute as @a[tag=pr.target,tag=house] at @s if block ~ ~-1 ~ dark_oak_slab[type=double] run tag @s add dialogue

scoreboard players add @a[tag=pr.target,tag=dialogue] warshito.DialogueTicks 1

tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=1}] [{"text":"<"},{"text":"Warshito","color":"dark_green","bold":true},{"text":"> ","color":"reset","bold":false},{"text":"Hey! You! Over there!"}]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=41}] [{"text":"<"},{"text":"Warshito","color":"dark_green","bold":true},{"text":"> ","color":"reset","bold":false},{"text":"Can you help us? The "},{"text":"c","color":"red","bold":true},{"text":"o","color":"yellow","bold":true},{"text":"l","color":"green","bold":true},{"text":"o","color":"green","bold":true},{"text":"r","color":"aqua","bold":true},{"text":" o","color":"dark_blue","bold":true},{"text":"r","color":"#DE08FF","bold":true},{"text":"b","color":"#DE08FF","bold":true},{"text":" has been lost","color":"reset"}]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=81}] [{"text":"<"},{"text":"Warshito","color":"dark_green","bold":true},{"text":"> ","color":"reset","bold":false},{"text":"You have to travel to another dimension, where the colors are separated. You will have one color assigned, and you can only step on your color"}]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks=161}] [{"text":"<"},{"text":"Warshito","color":"dark_green","bold":true},{"text":"> ","color":"reset","bold":false},{"text":"You'll figure out the rest. Good luck!"}]

execute if entity @a[tag=pr.target,scores={warshito.DialogueTicks=160..}] run fill ~-1 ~65 ~35 ~-1 ~68 ~33 air destroy
tag @a[tag=pr.target,scores={warshito.DialogueTicks=360..}] remove dialogue
scoreboard players set @a[tag=pr.target,scores={warshito.DialogueTicks=360..}] warshito.DialogueTicks 0


execute as @a[tag=pr.target,tag=house] at @s if block ~ ~-1 ~ dark_oak_slab[type=top] run tag @s add dialogue2

tellraw @a[tag=pr.target,tag=!D_finished,tag=dialogue2] [{"text":"<"},{"text":"Jalafito","color":"dark_purple","bold":true},{"text":"> ","color":"reset","bold":false},{"text":"Hurry up! If you don't get it in time, it will go out of control!"}]

tag @a[tag=pr.target,tag=dialogue2] add D_finished
tag @a[tag=pr.target,tag=dialogue2] remove dialogue2

# End Gateway
execute as @a[tag=pr.target] at @s if block ~-0.5 ~ ~ minecraft:end_gateway run tag @s add Gateway
tp @a[tag=pr.target,tag=Gateway] ~0 ~-58 ~36 180 0
tag @a[tag=pr.target,tag=Gateway] remove Gateway
# This function runs as and at all players that enter your plot

tag @s add pr.plate_checkpoint

tellraw @s [{"text":"Reach the castle! On your fragile steed!","bold":true,"color":"gold","type":"text"}]

execute at @s run summon minecraft:horse ~ ~ ~ {Silent:1b,Tame:1b,Variant:1029,Tags:["pr.target"],Attributes:[{Name:"minecraft:generic.max_health",Base:1.0d},{Name:"minecraft:generic.movement_speed",Base:0.5d},{Name:"minecraft:horse.jump_strength",Base:0.75d}],SaddleItem:{id:"minecraft:saddle",Count:1b},DeathLootTable:""}
execute at @s run ride @s mount @e[type=minecraft:horse,tag=pr.target,sort=nearest,limit=1]
return 1
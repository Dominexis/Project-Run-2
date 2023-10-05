# This function runs as and at all players that enter your plot

tag @s add pr.plate_checkpoint

tellraw @s [{"text":"Reach the castle! On your fragile steed!","bold": true,"color": "gold"}]

execute at @s run summon horse ~ ~ ~ {Silent:1b,Tame:1b,Variant:1029,Tags:["pr.target"],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.5},{Name:horse.jump_strength,Base:0.75}],SaddleItem:{id:"minecraft:saddle",Count:1b}}
execute at @s run ride @s mount @e[type=horse,tag=pr.target,sort=nearest,limit=1]
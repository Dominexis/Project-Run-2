summon minecraft:snowball ~ ~ ~ {Tags:["pr.target"],Motion:[-0.125d,0.8d,0.0d],Item:{id:"minecraft:slime_block",Count:1b}}
ride @s mount @e[type=snowball,tag=pr.target,tag=!lifeely.snowball,sort=nearest,limit=1]
tag @e[type=snowball,tag=pr.target,tag=!lifeely.snowball] add lifeely.snowball
playsound minecraft:block.slime_block.hit master @a
playsound minecraft:block.slime_block.break master @a
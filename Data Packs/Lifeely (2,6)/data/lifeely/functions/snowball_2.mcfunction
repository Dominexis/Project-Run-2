summon minecraft:snowball ~ ~ ~ {Tags:["pr.target"],Motion:[0.0d,1.0d,1.5d],Item:{id:"minecraft:slime_block",Count:1b}}
ride @s mount @e[type=snowball,tag=pr.target,tag=!lifeely.snowball,sort=nearest,limit=1]
tag @e[type=snowball,tag=pr.target,tag=!lifeely.snowball] add lifeely.snowball
playsound minecraft:block.slime_block.hit master @a
playsound minecraft:block.slime_block.break master @a
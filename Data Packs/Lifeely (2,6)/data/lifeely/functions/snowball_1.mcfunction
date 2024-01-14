summon minecraft:armor_stand ~ ~ ~ {Tags:["pr.target"],Motion:[-0.39d,1.3d,0.0d],Small:1b,Invisible:1b,Silent:1b}
ride @s mount @e[type=minecraft:armor_stand,tag=pr.target,tag=!lifeely.armor_stand,sort=nearest,limit=1]
tag @e[type=minecraft:armor_stand,tag=pr.target,tag=!lifeely.armor_stand] add lifeely.armor_stand
playsound minecraft:block.slime_block.hit master @a
playsound minecraft:block.slime_block.break master @a
return 1
scoreboard players set #second_timer lifeely.value 0

kill @e[type=minecraft:arrow,tag=pr.target,nbt={inGround:1b}]
execute as @e[type=minecraft:arrow,tag=pr.target] store result score @s lifeely.value run data get entity @s Motion[0] 1000
kill @e[type=minecraft:arrow,tag=pr.target,scores={lifeely.value=-10..}]
return 1
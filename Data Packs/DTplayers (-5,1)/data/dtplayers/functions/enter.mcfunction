#enter: This function will run as a player who enters your plot. This also runs as players that log into your plot.

item replace entity @s armor.head with minecraft:glass
scoreboard players set @s dtplayers.oxygen 100

#enable oxygen mechanics
scoreboard players set @s dtplayers.death 0
tag @s add dtplayers.in_oxygen

#store the first integer of the players' uuid in the rocket id tag for future use
execute store result score @s dtplayers.rocket.id run data get entity @s UUID[0] 1

#hide the timer
tag @s add pr.hide_timer

#entry dialogue
summon minecraft:creeper ~ ~-5 ~ {ExplosionRadius:0b,Fuse:0s,ignited:1b}
tellraw @s [{"text":"What was that explosion?! The ","color":"gold","type":"text"},{"text":"oxygen","color":"aqua","type":"text"},{"text":" system is ","color":"gold","type":"text"},{"text":"offline","color":"red","bold":true,"type":"text"},{"text":". Quick, get to the escape pod!!!","color":"gold","type":"text"}]
return 1
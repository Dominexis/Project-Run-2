#this is run AS the armorstand carrying the player, but AT the player's position.
#NOTE: Commands should executed such that no players should be in the same exact position, so that the use of @p[tag=pr.target] can be effective at selecting the proper player

#use @p[tag=pr.target] to select the player
#use @s to select the rocket armorstand

#the rocket armorstand timer score represents time since launch, and player timer scores represent repeating timers for the sound spacing
scoreboard players add @s dtplayers.rocket.timer 1
scoreboard players add @p[tag=pr.target] dtplayers.rocket.timer 1
execute as @p[tag=pr.target] run scoreboard players set @s[scores={dtplayers.rocket.timer=4..}] dtplayers.rocket.timer 0

#ride the rocket!
ride @p[tag=pr.target] mount @s



#countdown phase
execute as @s[scores={dtplayers.rocket.timer=1}] run title @p[tag=pr.target] title {"text":"3","color":"red","bold":true}
execute as @s[scores={dtplayers.rocket.timer=2}] run playsound minecraft:block.note_block.bit master @p[tag=pr.target] ~ ~ ~ 1.0 1.0
execute as @s[scores={dtplayers.rocket.timer=21}] run title @p[tag=pr.target] title {"text":"2","color":"red","bold":true}
execute as @s[scores={dtplayers.rocket.timer=21}] run playsound minecraft:block.note_block.bit master @p[tag=pr.target] ~ ~ ~ 1.0 1.0
execute as @s[scores={dtplayers.rocket.timer=41}] run title @p[tag=pr.target] title {"text":"1","color":"red","bold":true}
execute as @s[scores={dtplayers.rocket.timer=41}] run playsound minecraft:block.note_block.bit master @p[tag=pr.target] ~ ~ ~ 1.0 1.0
execute as @s[scores={dtplayers.rocket.timer=61}] run title @p[tag=pr.target] title {"text":"LAUNCH","color":"red","bold":true}
execute as @s[scores={dtplayers.rocket.timer=61}] run playsound minecraft:block.note_block.bit master @p[tag=pr.target] ~ ~ ~ 1.0 2.0

#rocket exhaust sounds
execute as @s[scores={dtplayers.rocket.timer=11..61}] as @p[tag=pr.target] as @s[scores={dtplayers.rocket.timer=1}] run playsound minecraft:entity.ender_dragon.flap master @p[tag=pr.target] ~ ~ ~ 0.3 0.5
execute as @s[scores={dtplayers.rocket.timer=62..115}] as @p[tag=pr.target] as @s[scores={dtplayers.rocket.timer=1}] run playsound minecraft:entity.ender_dragon.flap master @p[tag=pr.target] ~ ~ ~ 0.7 0.5
execute as @s[scores={dtplayers.rocket.timer=116..130}] as @p[tag=pr.target] as @s[scores={dtplayers.rocket.timer=1}] run playsound minecraft:entity.ender_dragon.flap master @p[tag=pr.target] ~ ~ ~ 0.3 0.5
execute as @s[scores={dtplayers.rocket.timer=131..}] as @p[tag=pr.target] as @s[scores={dtplayers.rocket.timer=1}] run playsound minecraft:entity.ender_dragon.flap master @p[tag=pr.target] ~ ~ ~ 0.1 0.5

#rocket particles
execute as @s[scores={dtplayers.rocket.timer=11..61}] run particle minecraft:explosion ~ ~-0.5 ~ 1 0 1 1 1 force @p
execute as @s[scores={dtplayers.rocket.timer=61..}] as @p[tag=pr.target] as @s[scores={dtplayers.rocket.timer=1}] run particle minecraft:explosion ~ ~-0.5 ~ 0.3 0 0.3 1 1 force @p

#ROCKET ACCELERATION
#initially save the y position into the rocket's data
execute as @s[scores={dtplayers.rocket.timer=61}] store result score @s dtplayers.rocket.y_pos run data get entity @s Pos[1] 1000
#apply acceleration, the acceleration is 0.012 blocks/tick^2 (I think)
execute as @s[scores={dtplayers.rocket.timer=61..}] run scoreboard players add @s dtplayers.rocket.y_vel 12
execute as @s[scores={dtplayers.rocket.timer=61..}] run scoreboard players operation @s dtplayers.rocket.y_pos += @s dtplayers.rocket.y_vel
#update the armorstand's new position
execute as @s[scores={dtplayers.rocket.timer=61..}] store result entity @s Pos[1] double 0.001 run scoreboard players get @s dtplayers.rocket.y_pos


#darkness!
execute as @s[scores={dtplayers.rocket.timer=130..}] run effect give @p[tag=pr.target] minecraft:darkness 1 0 true
execute as @s[scores={dtplayers.rocket.timer=145..}] run effect give @p[tag=pr.target] minecraft:blindness 1 0 true


#ending the scene
execute as @s[scores={dtplayers.rocket.timer=150..}] run function dtplayers:rocket/end_rocket
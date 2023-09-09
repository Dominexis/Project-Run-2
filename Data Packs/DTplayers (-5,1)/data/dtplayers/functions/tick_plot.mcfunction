#tick_plot: This function will run every tick while there are players in your plot.
#every entity (other than spectating players) will have the tag pr.target



#LOW GRAVITY MECHANICS
execute as @a[tag=pr.target] at @s[tag=!dtplayers.riding_rocket] run function dtplayers:gamemechanics/low_gravity


#OXYGEN MECHANICS
#reset oxygen for any respawned players
#scoreboard players set @e[type=minecraft:player,tag=pr.target,scores={dtplayers.death=1..}] dtplayers.oxygen 100
#scoreboard players set @e[type=minecraft:player,tag=pr.target,scores={dtplayers.death=1..}] dtplayers.death 0

execute as @a[tag=pr.target] at @s[tag=!dtplayers.riding_rocket] run function dtplayers:gamemechanics/oxygen

#low oxygen warning sound effects (only for living players)
#execute as @e[type=minecraft:player,tag=pr.target,scores={dtplayers.oxygen=0..14,dtplayers.oxygen_lose=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.6
#execute as @e[type=minecraft:player,tag=pr.target,scores={dtplayers.oxygen=0,dtplayers.oxygen_lose=3}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.54

#Rocket ending scene tick call. This selects all the players riding a rocket, then it runs the function as the rocket armor_stand but at the player so that @p[tag=pr.target] can be used.
execute as @a[tag=pr.target] as @s[tag=dtplayers.riding_rocket] at @s as @e[type=minecraft:armor_stand,tag=dtplayers.rocket] if score @p[tag=pr.target] dtplayers.rocket.id = @s dtplayers.rocket.id run function dtplayers:rocket/rocket_tick


#PARTICLES
#Oxygen refill location 1
#translation formula x+439.5 y+0 z-136.5
#particle minecraft:composter -433.5 22 141.5 0.25 0.5 0.25 0 1 normal
particle minecraft:composter ~6.0 ~22 ~5.0 0.25 0.5 0.25 0 1 normal
particle minecraft:wax_off ~6.0 ~22.50 ~7.5 1.5 1 1 0.3 1 normal

#Oxygen refill location 2
particle minecraft:composter ~1.0 ~47 ~-12.0 0.25 0.5 0.25 0 1 normal
particle minecraft:wax_off ~-1.5 ~47.5 ~-12.0 1 1 1.5 0.3 1 normal


#Oxygen refill location 3
particle minecraft:composter ~6.0 ~61 ~-7.0 0.25 0.5 0.25 0 1 normal
particle minecraft:wax_off ~3.5 ~61.5 ~-7.0 1 1 1.5 0.3 1 normal


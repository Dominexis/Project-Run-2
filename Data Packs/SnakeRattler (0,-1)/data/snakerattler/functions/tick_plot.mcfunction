#Time Warper Insurance
execute as @a[tag=pr.target] store result score @s SnakeRattler.TimeWarpCounter run clear @s warped_fungus_on_a_stick{CustomModelData:82} 0
execute as @a[tag=pr.target,scores={SnakeRattler.TimeWarpCounter=2..}] run clear @s
execute as @a[tag=pr.target,scores={SnakeRattler.TimeWarpCounter=..0}] run item replace entity @s hotbar.0 with warped_fungus_on_a_stick{CustomModelData:82,display:{Name:'{"text": "Time Warper","color": "gold","bold":true}',Lore:['{"text":"Use this mechanism to traverse"}','{"text":"between times of this torn world"}']}}

#Location Tracking
scoreboard players set @a[tag=pr.target] SnakeRattler.TimeTracker -1
execute positioned ~-39 -64 ~-39 as @a[tag=pr.target,y=69,dy=250,dx=77,dz=77] run scoreboard players set @s SnakeRattler.TimeTracker 0
execute positioned ~-39 -64 ~-39 as @a[tag=pr.target,y=-64,dy=133,dx=77,dz=77] run scoreboard players set @s SnakeRattler.TimeTracker 1

#Switch Up
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=1..}] at @s run tp @s ~ ~111 ~
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=1..}] at @s run playsound minecraft:entity.enderman.teleport master @s

#Switch Down
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=0,SnakeRattler.TimeSwitch=1..}] at @s run tp @s ~ ~-111 ~
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=0,SnakeRattler.TimeSwitch=1..}] at @s run playsound minecraft:entity.enderman.teleport master @s

# Invisibility

effect give @a[tag=pr.target] invisibility infinite 0 true

scoreboard players set @a[tag=pr.target] SnakeRattler.TimeSwitch 0

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ white_stained_glass run kill @s

kill @e[type=item,tag=pr.target]
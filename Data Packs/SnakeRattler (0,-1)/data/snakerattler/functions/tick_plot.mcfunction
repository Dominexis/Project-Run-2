#Time Warper Insurance
execute as @a[tag=pr.target] store result score @s SnakeRattler.TimeWarpCounter run clear @s minecraft:warped_fungus_on_a_stick{CustomModelData:82} 0
execute as @a[tag=pr.target,scores={SnakeRattler.TimeWarpCounter=2..}] run clear @s
execute as @a[tag=pr.target,scores={SnakeRattler.TimeWarpCounter=..0}] run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{CustomModelData:82,display:{Name:'{"text":"Time Warper","color":"gold","bold":true,"type":"text"}',Lore:['{"text":"Use this mechanism to traverse","type":"text"}','{"text":"between times of this torn world","type":"text"}']}}

#Location Tracking
scoreboard players set @a[tag=pr.target] SnakeRattler.TimeTracker -1
execute positioned ~-39 -64 ~-39 as @a[y=69,dx=77,dy=250,dz=77,tag=pr.target] run scoreboard players set @s SnakeRattler.TimeTracker 0
execute positioned ~-39 -64 ~-39 as @a[y=-64,dx=77,dy=133,dz=77,tag=pr.target] run scoreboard players set @s SnakeRattler.TimeTracker 1

#Switch Up
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=1..}] at @s run tp @s ~ ~111 ~
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=1..}] at @s run playsound minecraft:entity.enderman.teleport master @s

#Switch Down
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=0,SnakeRattler.TimeSwitch=1..}] at @s run tp @s ~ ~-111 ~
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=0,SnakeRattler.TimeSwitch=1..}] at @s run playsound minecraft:entity.enderman.teleport master @s

# Invisibility

effect give @a[tag=pr.target] minecraft:invisibility infinite 0 true

scoreboard players set @a[tag=pr.target] SnakeRattler.TimeSwitch 0

execute as @a[tag=pr.target] at @s if block ~ ~-0.1 ~ minecraft:white_stained_glass run kill @s

kill @e[type=minecraft:item,tag=pr.target]
return 1
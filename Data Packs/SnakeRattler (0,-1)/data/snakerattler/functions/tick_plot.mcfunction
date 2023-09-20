#Time Warper Insurance
execute as @a[tag=pr.target] store result score @s SnakeRattler.TimeWarpCounter run clear @s ender_eye{CustomModelData:82} 0
execute as @a[tag=pr.target,scores={SnakeRattler.TimeWarpCounter=..0,SnakeRattler.TimeWarpCounter=2..}] run clear @s
execute as @a[tag=pr.target,scores={SnakeRattler.TimeWarpCounter=..0,SnakeRattler.TimeWarpCounter=2..}] run item replace entity @s hotbar.0 with ender_eye{CustomModelData:82,display:{Name:'{"text": "Time Warper","color": "gold","bold":true}',Lore:['{"text":"Use this mechanism to traverse"}','{"text":"between times of this torn world"}']}}

#Location Tracking
execute as @a[tag=pr.target,y=29,dy=250] run scoreboard players set @s SnakeRattler.TimeTracker 0
execute as @a[tag=pr.target,y=-64,dy=92] run scoreboard players set @s SnakeRattler.TimeTracker 1

#Switch Up
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=1..}] at @s run tp @s ~ ~111 ~
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=1..}] at @s run scoreboard players set @s SnakeRattler.TimeSwitch 0

#Switch Down
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=0,SnakeRattler.TimeSwitch=..0}] at @s run tp @s ~ ~-111 ~
execute as @a[tag=pr.target,scores={SnakeRattler.TimeTracker=1,SnakeRattler.TimeSwitch=..0}] at @s run scoreboard players set @s SnakeRattler.TimeSwitch 0
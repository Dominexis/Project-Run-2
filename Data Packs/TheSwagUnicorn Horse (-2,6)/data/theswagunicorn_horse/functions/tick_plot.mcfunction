# This function will run every tick while players are in your plot on the center block at Y=0
scoreboard players set @a[tag=pr.target] Swag.HorsePing 0
execute as @e[type=horse,tag=pr.target] on passengers run scoreboard players set @s[tag=pr.target] Swag.HorsePing 1
execute as @a[tag=pr.target,scores={Swag.HorsePing=0}] run scoreboard players add @s Swag.TickDelay 1

scoreboard players set @e[type=horse,tag=pr.target] Swag.HorsePing 0
execute as @a[tag=pr.target] on vehicle run scoreboard players set @s[tag=pr.target] Swag.HorsePing 1
kill @e[type=horse,tag=pr.target,scores={Swag.HorsePing=0}]

#Anti-Horse Dismounting
execute as @a[tag=pr.target,scores={Swag.HorsePing=0}] if score @s Swag.TickDelay matches 0 at @s run kill @e[type=horse,tag=pr.target,sort=nearest,limit=1]
kill @e[type=item,tag=pr.target]
execute as @a[tag=pr.target,scores={Swag.HorsePing=0}] if score @s Swag.TickDelay matches 1 run kill @s
execute as @a[tag=pr.target,scores={Swag.HorsePing=0}] if score @s Swag.TickDelay matches 2 at @s run summon horse ~ ~ ~ {Silent:1b,Tame:1b,Variant:1029,Tags:["pr.target"],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:0.5},{Name:horse.jump_strength,Base:0.75}],SaddleItem:{id:"minecraft:saddle",Count:1b}}
execute as @a[tag=pr.target,scores={Swag.HorsePing=0}] if score @s Swag.TickDelay matches 2 at @s run ride @s mount @e[type=horse,tag=pr.target,sort=nearest,limit=1]

execute as @a[tag=pr.target,scores={Swag.HorsePing=0}] if score @s Swag.TickDelay matches 2 run scoreboard players set @s Swag.TickDelay 0

#Water Reset
execute as @e[type=horse,tag=pr.target] at @s if block ~ ~ ~ water on passengers run kill @s
execute as @e[type=horse,tag=pr.target] at @s if block ~ ~ ~ water run kill @s

#Ending
execute as @a[tag=pr.target] at @s if block ~ ~ ~ end_gateway on vehicle run kill @s
execute as @a[tag=pr.target] at @s if block ~ ~ ~ end_gateway run function pr:player/finish
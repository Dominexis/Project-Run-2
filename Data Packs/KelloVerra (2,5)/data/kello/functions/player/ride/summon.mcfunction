tag @s add kello.player.target
scoreboard players operation #local kello.player.id = @s kello.player.id


# Ride ovveriding

scoreboard players set #boolean kello.value 0
execute on vehicle on passengers run scoreboard players set #boolean kello.value 1
execute if score #boolean kello.value matches 1 on vehicle if entity @s[type=pufferfish,tag=kello.entity.type.chariot] on passengers run function kello:player/ride/unride



# Ride initialization

execute if score #ridelock kello.value matches 0 positioned ~ ~.25 ~ summon pufferfish run function kello:player/ride/score
execute if score #ridelock kello.value matches 1 positioned ~ ~.25 ~ summon pufferfish run function kello:player/ride/score_new_lock
scoreboard players set #ridelock kello.value 0

tag @s add kello.riding




# Destination initialization

scoreboard players set #boolean kello.value 0
execute as @e[type=#kello:generic/system,tag=kello.entity.destination_pos] positioned as @s run function kello:player/ride/destination
execute if score #boolean kello.value matches 1 run tag @s add kello.trigger_flee
tag @s remove kello.player.target
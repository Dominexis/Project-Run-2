#OXYGEN MECHANICS
#function is run as and at all players who are in the plot

#Deplete oxygen values per 7 gameticks
scoreboard players add @s dtplayers.oxygen_lose 1
scoreboard players remove @s[scores={dtplayers.oxygen_lose=7..,dtplayers.oxygen=1..}] dtplayers.oxygen 1
scoreboard players set @s[scores={dtplayers.oxygen_lose=7..}] dtplayers.oxygen_lose 0

function pr:player/time/compute

#normal oxygen title
function help:eae4121486133111f7ac9e15da6120b7b3c66fd0c9c761eb096b595c1515e9e9

#low oxygen title
function help:d2b17f7cc9374c8ed381c90d6dee4ec45e80ce5814f0408d15d7da8a9638083e

#VERY low oxygen title (animated)
function help:6c2649ee3bb290c6fef8bfe5fcd701e38f9d240b7e3703dc1f919897d3f6d9aa

function help:0d2111c070f4778ee222eab5d125dc213337d83fe7557b152c791094bef2a2e7

#########title @s actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]

#low oxygen warning sound effects
execute if entity @s[scores={dtplayers.oxygen=0..14,dtplayers.oxygen_lose=1}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.6
execute if entity @s[scores={dtplayers.oxygen=0,dtplayers.oxygen_lose=3}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.54

#Death by Hypoxia
#effect give @s[scores={dtplayers.oxygen=0}] minecraft:wither 1 8 true
damage @s[scores={dtplayers.oxygen=0,dtplayers.oxygen_lose=0}] 4 minecraft:generic



#OXYGEN REFILL: all players refilling on oxygen will have the tag 'dtplayers.in_oxygen'

#detect if light blue stained glass 3 blocks below (marker for air refil location)
execute if block ~ ~-3 ~ minecraft:light_blue_stained_glass run tag @s add dtplayers.in_oxygen

#reset oxygen for any respawned players
scoreboard players set @s[scores={dtplayers.death=1..}] dtplayers.oxygen 100
scoreboard players set @s[scores={dtplayers.death=1..}] dtplayers.death 0

#sound effect
execute if entity @s[tag=dtplayers.in_oxygen,scores={dtplayers.oxygen=0..99}] run playsound minecraft:entity.player.breath master @s ~ ~ ~ 1.0 0.7 1.0

#reset oxygen
scoreboard players set @s[tag=dtplayers.in_oxygen] dtplayers.oxygen 100
scoreboard players set @s[tag=dtplayers.in_oxygen] dtplayers.oxygen_lose 0

#reset tag
tag @a[tag=dtplayers.in_oxygen] remove dtplayers.in_oxygen

return 1
#OXYGEN MECHANICS
#function is run as and at all players who are in the plot

#Deplete oxygen values per 7 gameticks
scoreboard players add @s dtplayers.oxygen_lose 1
scoreboard players remove @s[scores={dtplayers.oxygen_lose=7..,dtplayers.oxygen=1..}] dtplayers.oxygen 1
scoreboard players set @s[scores={dtplayers.oxygen_lose=7..}] dtplayers.oxygen_lose 0

#normal oxygen title
title @s[scores={dtplayers.oxygen=50..}] actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true},{"text":"  ●  ","color":"gray"},{"score":{"name":"@s","objective":"dtplayers.oxygen"},"color":"#6BD3FF","bold":true},{"text":" O₂","color":"#6BD3FF","bold":"false"}]

#low oxygen title
title @s[scores={dtplayers.oxygen=15..49}] actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true},{"text":"  ●  ","color":"gray"},{"score":{"name":"@s","objective":"dtplayers.oxygen"},"color":"yellow","bold":true},{"text":" O₂","color":"yellow","bold":"false"}]

#VERY low oxygen title (animated)
title @s[scores={dtplayers.oxygen=0..14,dtplayers.oxygen_lose=0..3}] actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true},{"text":"  ●  ","color":"gray"},{"score":{"name":"@s","objective":"dtplayers.oxygen"},"color":"red","bold":true},{"text":" O₂ ⚠","color":"red","bold":"false"}]

title @s[scores={dtplayers.oxygen=0..14,dtplayers.oxygen_lose=4..6}] actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true},{"text":"  ●  ","color":"gray"},{"score":{"name":"@s","objective":"dtplayers.oxygen"},"color":"red","bold":true},{"text":" O₂   ","color":"red","bold":"false"}]

#########title @s actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]

#low oxygen warning sound effects
execute as @s[scores={dtplayers.oxygen=0..14,dtplayers.oxygen_lose=1}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.6
execute as @s[scores={dtplayers.oxygen=0,dtplayers.oxygen_lose=3}] run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.2 0.54

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
execute as @s[scores={dtplayers.oxygen=0..99},tag=dtplayers.in_oxygen] run playsound minecraft:entity.player.breath master @s ~ ~ ~ 1.0 0.7 1.0

#reset oxygen
scoreboard players set @s[tag=dtplayers.in_oxygen] dtplayers.oxygen 100
scoreboard players set @s[tag=dtplayers.in_oxygen] dtplayers.oxygen_lose 0

#reset tag
tag @a[tag=dtplayers.in_oxygen] remove dtplayers.in_oxygen

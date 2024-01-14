#this is run as a player when they are blasting off. This is the ending scene
#this is run at the location of the player

#face a reasonable direction so youre no longer looking at the sky!
tp @s ~ ~ ~ -60 17

#summon the "rocket" (the armorstand which will raise us up)
summon minecraft:armor_stand ~ ~49.5 ~ {Marker:1b,Invisible:1b,Tags:["dtplayers.rocket","dtplayers.unset_id"]}

#give the armorstand the score of the players' partial UUID for their ID
execute store result score @e[tag=dtplayers.unset_id] dtplayers.rocket.id run data get entity @s UUID[0] 1
tag @e[tag=dtplayers.unset_id] remove dtplayers.unset_id

#invisibility
effect give @s minecraft:invisibility infinite 0 true

clear @s

#scoreboard players set @s dtplayers.rocket.timer 1
tag @s add dtplayers.riding_rocket
tag @s remove pr.hide_timer
return 1
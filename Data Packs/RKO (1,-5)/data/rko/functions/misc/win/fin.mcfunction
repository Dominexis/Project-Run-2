tag @s remove rko_finish
tag @s remove rko_finish_land

scoreboard players reset @s rko.win

function pr:player/finish
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 5 0
return 1
# Put into spectator mode

gamemode spectator @s
tellraw @s {"text":"You are now spectating","color":"gold"}
tellraw @s [{"text":"Use ","color":"gray"},{"text":"/trigger lobby","color":"white"},{"text":" to return to the lobby","color":"gray"}]
team join pr.spectator @s
title @s actionbar ""

function pr:player/checkpoint/lobby

scoreboard players set @s spectate 0
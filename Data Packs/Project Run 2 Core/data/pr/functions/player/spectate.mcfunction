# Put into spectator mode

gamemode spectator @s
tellraw @s {"text":"You are now spectating","color":"gold","type":"text"}
tellraw @s [{"text":"Use ","color":"gray","type":"text"},{"text":"/trigger lobby","color":"white","type":"text"},{"text":" to return to the lobby","color":"gray","type":"text"}]
team join pr.spectator @s
title @s actionbar ""

function pr:player/checkpoint/lobby

scoreboard players set @s spectate 0
return 1
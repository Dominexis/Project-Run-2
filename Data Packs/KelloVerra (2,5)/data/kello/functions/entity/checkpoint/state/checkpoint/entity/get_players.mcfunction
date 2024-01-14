# Push scores

scoreboard players set #found_players kello.value 0



# Count players that have the same checkpoint id

execute as @a[distance=..128,tag=pr.target] if score @s kello.player.checkpoint.id = #local kello.player.checkpoint.id run scoreboard players add #found_players kello.value 1
return 1
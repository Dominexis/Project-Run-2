# Deactivate referenced ticking entities if no players found / no longer loaded

scoreboard players set #return kello.value 1

execute if score #found_players kello.value matches 0 run function kello:entity/checkpoint/state/checkpoint/entity/deactivate/main
return 1
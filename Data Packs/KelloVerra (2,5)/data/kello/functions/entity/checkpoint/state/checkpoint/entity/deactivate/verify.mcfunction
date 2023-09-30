# Deactivate referenced ticking entities if no players found / no longer loaded

execute if score #found_players kello.value matches 0 run function kello:entity/checkpoint/state/checkpoint/entity/deactivate/main
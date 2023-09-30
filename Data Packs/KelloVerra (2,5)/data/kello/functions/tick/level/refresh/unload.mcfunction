#! UNLOAD LEVEL {score #level_id kello.value}

## NOTE: EXPERIMENTAL

scoreboard players operation #selected kello.level.id = #level_id kello.value
execute unless score #selected kello.level.id matches ..1 run function kello:plot/levels/unload/verify
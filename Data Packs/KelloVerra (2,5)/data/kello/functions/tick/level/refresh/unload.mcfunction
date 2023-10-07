#! UNLOAD LEVEL {score #level_id kello.value}

## NOTE: EXPERIMENTAL

scoreboard players operation #selected kello.level.id = #level_id kello.value
function kello:plot/levels/unload/verify
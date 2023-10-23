# DATAMANCER#! UNLOAD LEVEL {score #level_id kello.value}

scoreboard players operation #selected kello.level.id = #level_id kello.value
scoreboard players operation #selected_variant kello.level.id = #level_variant kello.value
function kello:plot/levels/unload/verify
function kello:plot/levels/event/verify
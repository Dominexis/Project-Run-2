# Increment time

scoreboard players operation #time_increment pr.value = #time pr.value
scoreboard players operation #time_increment pr.value -= #previous_time pr.value
scoreboard players operation @s pr.time += #time_increment pr.value







# Display time

function pr:player/time/compute

title @s[tag=!pr.hide_timer] actionbar [{"nbt":"tag.minutes","storage":"pr:data","interpret":true},{"text":":","color":"gray"},{"nbt":"tag.seconds","storage":"pr:data","interpret":true},{"text":".","color":"gray"},{"nbt":"tag.milliseconds","storage":"pr:data","interpret":true}]
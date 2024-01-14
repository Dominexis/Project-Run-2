# Increment time

scoreboard players operation #time_increment pr.value = #time pr.value
scoreboard players operation #time_increment pr.value -= #previous_time pr.value
scoreboard players operation @s[tag=!pr.pause_timer] pr.time += #time_increment pr.value







# Display time

function pr:player/time/compute

function help:25cc169e32b96cf069fe8ef97079a2bccba9ee0ad7ab73a386dd8a072e440e82
return 1
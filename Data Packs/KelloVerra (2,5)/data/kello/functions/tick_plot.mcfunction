# This function will run every tick while players are in your plot on the center block at Y=0

# function animated_java:tick

#particle flame ~ ~ ~ 0 0 0 0.01 1 force

function pr:time/get
scoreboard players operation #initial_tick_time kello.value = #time pr.value

function kello:tick/main


function pr:time/get
scoreboard players operation tick_time kello.value = #time pr.value
scoreboard players operation tick_time kello.value -= #initial_tick_time kello.value
scoreboard players operation #prev_tick_time kello.value = #time pr.value
return 1
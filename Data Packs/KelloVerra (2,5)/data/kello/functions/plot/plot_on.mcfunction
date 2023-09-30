# This function will run when the plot turns on, which is when players enter your plot after it was empty
# It will run in your plot on the center block at Y=0
# Use this to prepare your plot for players

function kello:setup/main



# AJ

function animated_java:cogwheel/zzzzzzzz/load
function animated_java:decwheel/zzzzzzzz/load
function animated_java:escapement/zzzzzzzz/load
function animated_java:checkpoint_flag/zzzzzzzz/load
function animated_java:launchpad/zzzzzzzz/load
function animated_java:moving_platform/zzzzzzzz/load
function animated_java:dangling_platform/zzzzzzzz/load
function animated_java:melloflora_lantern_sho/zzzzzzzz/load
function animated_java:melloflora_lantern_med/zzzzzzzz/load
function animated_java:melloflora_lantern_lar/zzzzzzzz/load
function animated_java:gate/zzzzzzzz/load





# Load start room (Level 1)

scoreboard players set #selected kello.level.id 1
function kello:plot/levels/unload/verify
function kello:plot/levels/load/start_room/main



# Level specific

function kello:tick/level/initialize
summon marker ~ ~ ~ {Tags:["kello.exclude","kello.ignore","kello.entity.plot_center"]}




scoreboard players set #has_deactivated kello.value 0
# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

# Unload start room (Level 1)

scoreboard players set #selected kello.level.id 1
function kello:plot/levels/unload/verify

kill @e[type=marker,tag=kello.entity.plot_center]

function kello:tick/level/uninitialize

data remove storage kello:data tag

scoreboard players set #has_deactivated kello.value 1
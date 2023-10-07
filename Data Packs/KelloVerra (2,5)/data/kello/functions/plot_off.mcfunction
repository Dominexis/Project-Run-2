# This function will run when the plot turns off, which is when your plot becomes empty
# It will run in your plot on the center block at Y=0
# Use this to reset your plot and get rid of any laggy entities

# Unload start room (Level 1)

scoreboard players set #selected kello.level.id 1
function kello:plot/levels/unload/verify


# Nuke everything

kill @e[type=marker,tag=kello.entity.plot_center,tag=pr.ignore]
kill @e[type=marker,tag=kello.decal.temp_spawn_point,tag=pr.ignore]
kill @e[type=marker,tag=kello.void_marker,tag=pr.ignore]

kill @e[type=interaction,tag=kello.entity.interactable]

function animated_java:cogwheel/remove/all


# Um, well you see.. sometimes the entities did not get tagged by kello.entity or kello.decal, 
# so my only way to kill them inside the confines of my plot is to use this radioactive line of code :

execute positioned ~-44 -64 ~-44 run kill @e[type=!player,dx=83,dy=320,dz=83]



# Uninitialize level loadings n stuff

function kello:tick/level/uninitialize

function kello:setup/uninstall
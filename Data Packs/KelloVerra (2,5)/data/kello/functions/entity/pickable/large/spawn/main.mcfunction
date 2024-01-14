# Play animation on spawn

scoreboard players operation #animation aj.i = $aj.cogwheel.animation.large_ground aj.id
function animated_java:cogwheel/summon/large


# Init

execute as @e[type=minecraft:item_display,distance=..1,tag=pr.target,tag=aj.cogwheel.root,tag=!kello.entity,sort=nearest,limit=1] run function kello:entity/pickable/large/spawn/data
return 1
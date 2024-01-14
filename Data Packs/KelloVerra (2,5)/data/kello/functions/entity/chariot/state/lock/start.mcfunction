# Set state

scoreboard players set #state kello.value 1

execute at @e[type=minecraft:marker,distance=..2,tag=kello.entity.type.destination_marker,tag=kello.entity.target,sort=nearest,limit=1] run function kello:player/flee/init
return 1
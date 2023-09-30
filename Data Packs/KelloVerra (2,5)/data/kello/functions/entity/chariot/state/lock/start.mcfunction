# Set state

scoreboard players set #state kello.value 1

execute at @e[type=marker,tag=kello.entity.type.destination_marker,tag=kello.entity.target,distance=..2,sort=nearest,limit=1] run function kello:player/flee/init
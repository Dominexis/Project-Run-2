# Set state

scoreboard players set #state kello.value 0

scoreboard players set @s[tag=!kello.groundicator.persistent] kello.entity.timer 9
scoreboard players set @s[tag=kello.groundicator.persistent] kello.entity.lifetime 0



# Start animation

execute if entity @s[tag=!kello.groundicator.persistent] run function kello:entity/groundicator/small/animation/construct/apply
execute if entity @s[tag=kello.groundicator.persistent] run function kello:entity/groundicator/small/state/construct/persistent_init
return 1
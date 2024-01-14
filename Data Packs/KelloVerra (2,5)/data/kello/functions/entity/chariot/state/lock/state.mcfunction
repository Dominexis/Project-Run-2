# States

scoreboard players set #boolean kello.value 0
execute on passengers on vehicle run scoreboard players set #boolean kello.value 1
execute if score #boolean kello.value matches 0 run function kello:entity/chariot/state/lock/terminate
return 1
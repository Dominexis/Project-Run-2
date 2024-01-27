scoreboard players remove @s kello.death.send_delay 1

execute if score @s kello.death.send_delay matches 20 run function kello:player/tick/void/send
# execute if score @s kello.death.send_delay matches 17 run playsound kello:void_trans_open ~ ~ ~ @s 0.75 1 0.75
execute if score @s kello.death.send_delay matches ..0 run function kello:player/tick/void/end
return 1
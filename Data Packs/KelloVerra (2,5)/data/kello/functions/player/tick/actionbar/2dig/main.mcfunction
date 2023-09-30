scoreboard players operation #pstate kello.value = @s kello.entity.state
execute if score @s kello.entity.state matches 0 run function kello:player/tick/actionbar/2dig/clear
# execute if score @s kello.entity.state matches 1 run function kello:player/tick/actionbar/2dig/cancel
execute if score @s kello.entity.state matches 1 run function kello:player/tick/actionbar/2dig/flee
execute if score @s kello.entity.state matches 2 run function kello:player/tick/actionbar/2dig/flee_revert
execute unless score @s kello.entity.state = #pstate kello.value run function pr:player/time/compute
execute unless score @s kello.entity.state = #pstate kello.value run function kello:player/tick/actionbar/2dig/main
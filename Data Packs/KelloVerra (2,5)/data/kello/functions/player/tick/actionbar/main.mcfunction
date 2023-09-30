# minutes digits selection limited to 4 digits rn

execute if score @s pr.time matches ..5999999 run function kello:player/tick/actionbar/2dig/main
execute if score @s pr.time matches 6000000..59999999 run function kello:player/tick/actionbar/3dig/main
execute if score @s pr.time matches 60000000.. run function kello:player/tick/actionbar/4dig/main
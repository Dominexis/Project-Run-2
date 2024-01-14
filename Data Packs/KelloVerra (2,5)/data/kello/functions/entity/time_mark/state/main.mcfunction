#> Generated using resour-mator by KelloVerra v.1.0.1 BETA (https://github.com/KelloVerra/Resour-mator)

scoreboard players add @s kello.entity.timer 1
scoreboard players operation #math kello.value = @s kello.entity.timer
scoreboard players operation #math kello.value *= #100 kello.value
scoreboard players operation #math kello.value /= @s kello.entity.delay
scoreboard players operation #math kello.value *= #17 kello.value
scoreboard players operation #math kello.value /= #100 kello.value







execute if score #math kello.value matches 00 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/0","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 01 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/1","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 02 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/2","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 03 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/3","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 04 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/4","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 05 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/5","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 06 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/6","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 07 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/7","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 08 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/8","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 09 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/9","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 10 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/10","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 11 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/11","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 12 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/12","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 13 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/13","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 14 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/14","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 15 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/15","obfuscated":true,"type":"text"}'}
execute if score #math kello.value matches 16 run data merge entity @s {text:'{"text":"\\ue000","font":"kello:timer/16","obfuscated":true,"type":"text"}'}








execute if score #math kello.value matches 17.. run kill @s
execute if score @s kello.entity.lifetime matches ..0 run kill @s
return 1
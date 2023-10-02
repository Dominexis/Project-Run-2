scoreboard players add @s earthmere_start 1

execute if score @s earthmere_start matches 1 run title @s times 20 10 30
execute if score @s earthmere_start matches 1 run title @s subtitle ""
execute if score @s earthmere_start matches 1 run title @s title {"text":"\uF100","font":"rko:fade"}

execute if score @s earthmere_start matches 21 run tp @s ~27 ~-59 ~-15 56.5 0

execute if score @s earthmere_start matches 25 at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 5 1
execute if score @s earthmere_start matches 25 at @s run function pr:player/checkpoint/mark
execute if score @s earthmere_start matches 25 run tag @s remove earthmere_start
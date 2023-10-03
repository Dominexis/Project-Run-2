# recursive function for the circle (i am not writing this out 35 times)
particle dust 1 0 0 1 ^ ^ ^1.3 0 0 0 1 1 force @s
scoreboard players add circle-rot piemel.values 10
execute if score circle-rot piemel.values matches ..350 rotated ~10 0 run function piemel:compass/circle-rcsv
# Give the player a random color

scoreboard players set #input pr.value 3
function pr:generic/rng/lcg
execute if score #output pr.value matches 0 run tag @s[tag=!Red,tag=!Green,tag=!Blue,tag=!house] add Red
execute if score #output pr.value matches 1 run tag @s[tag=!Red,tag=!Green,tag=!Blue,tag=!house] add Green
execute if score #output pr.value matches 2 run tag @s[tag=!Red,tag=!Green,tag=!Blue,tag=!house] add Blue
execute if score #output pr.value matches 0 run tellraw @s [{"text":"You are "},{"text":"RED","color":"red","bold":true}]
execute if score #output pr.value matches 1 run tellraw @s [{"text":"You are "},{"text":"GREEN","color":"green","bold":true}]
execute if score #output pr.value matches 2 run tellraw @s [{"text":"You are "},{"text":"BLUE","color":"blue","bold":true}]
tag @a[tag=Red] add pr.hide_timer
tag @a[tag=Green] add pr.hide_timer
tag @a[tag=Blue] add pr.hide_timer
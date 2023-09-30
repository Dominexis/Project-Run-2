# Start animation

execute unless score #state kello.value matches 2..3 run function kello:entity/aimdicator/large/animation/look/apply


# Set state

scoreboard players set #state kello.value 1
scoreboard players set @s kello.aim.count 0
tag @s remove kello.look

data merge entity @s {text:'{"text":"\\ue001","font":"kello:aim_look","obfuscated":"true"}'}
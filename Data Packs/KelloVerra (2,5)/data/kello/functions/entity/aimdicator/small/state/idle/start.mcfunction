# Set state

scoreboard players set #state kello.value 0
scoreboard players set @s kello.aim.count 0

data merge entity @s {text:'{"text":"\\ue001","font":"kello:aim_idle","obfuscated":"true"}'}
tag @s remove kello.look



# Start animation

function kello:entity/aimdicator/small/animation/idle/apply
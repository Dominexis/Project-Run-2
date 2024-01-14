# Set state

scoreboard players set #state kello.value 2

data merge entity @s {text:'{"text":"\\ue001","font":"kello:aim_targ","obfuscated":true,"type":"text"}'}




# Start animation

function kello:entity/aimdicator/large/animation/targ/apply
return 1
# Set state

scoreboard players set #state kello.value 3

data merge entity @s {text:'{"text":"\\ue001","font":"kello:aim_lock","obfuscated":true,"type":"text"}'}




# Start animation

function kello:entity/aimdicator/large/animation/lock/apply
return 1
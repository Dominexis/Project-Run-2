# Detag

tag @s remove kello.debug.no_interaction



# Boolean

scoreboard players set #boolean kello.value 1
function kello:player/tick/check_interaction
return 1
# Random color when recall

tag @s remove Red
tag @s remove Green
tag @s remove Blue
function warshito:choose_color

effect give @s minecraft:resistance infinite 200 true
tag @s remove dropper
tag @s remove kill_white
return 1
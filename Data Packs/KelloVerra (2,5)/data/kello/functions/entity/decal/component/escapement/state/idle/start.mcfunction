
scoreboard players set #state kello.value 0

function kello:entity/decal/component/escapement/animation/player/pause
function animated_java:escapement/animations/pause_all
execute if score @s kello.entity.state = @s kello.entity.state run function animated_java:escapement/animations/open/play

tag @s remove kello.entity.animation.player
return 1
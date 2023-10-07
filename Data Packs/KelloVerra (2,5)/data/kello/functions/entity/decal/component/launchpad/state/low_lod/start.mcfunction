# Set score

scoreboard players set #state kello.value 2




# Animation

function animated_java:launchpad/animations/pause_all




# Visual parts

execute on passengers if entity @s[type=item_display,tag=kello.entity.part.visual] run function kello:entity/decal/component/launchpad/state/idle/visual/dimmen
execute on passengers run function kello:entity/decal/component/launchpad/state/low_lod/start_as
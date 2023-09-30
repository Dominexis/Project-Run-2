scoreboard players add @s aj.launchpad.animation.bud.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.launchpad.animation.bud.local_anim_time
function animated_java:launchpad/zzzzzzzz/animations/bud/apply_frame_as_root
execute if score @s aj.launchpad.animation.bud.local_anim_time matches 1.. run function animated_java:launchpad/zzzzzzzz/animations/bud/end
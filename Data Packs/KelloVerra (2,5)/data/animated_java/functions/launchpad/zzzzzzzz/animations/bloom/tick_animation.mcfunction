scoreboard players add @s aj.launchpad.animation.bloom.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.launchpad.animation.bloom.local_anim_time
function animated_java:launchpad/zzzzzzzz/animations/bloom/apply_frame_as_root
execute if score @s aj.launchpad.animation.bloom.local_anim_time matches 15.. run function animated_java:launchpad/zzzzzzzz/animations/bloom/end
return 1
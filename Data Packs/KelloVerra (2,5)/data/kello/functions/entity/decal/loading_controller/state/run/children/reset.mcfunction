# Start anim

execute if entity @s[tag=aj.decwheel.root] positioned as @s run function kello:entity/decal/loading_controller/state/run/children/cog_start
execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/animations/pause_all
execute if entity @s[tag=aj.decwheel.root] run function kello:entity/decal/decwheel/animation/resume_rotate_run
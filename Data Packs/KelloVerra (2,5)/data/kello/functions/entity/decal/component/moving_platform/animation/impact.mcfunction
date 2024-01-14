execute if score #local kello.decal.state matches 0 run function animated_java:moving_platform/animations/pause_all
execute if score #local kello.decal.state matches 0 run function animated_java:moving_platform/animations/impact/play
execute if score #local kello.decal.state matches 0 run function animated_java:moving_platform/apply_variant/static

execute if score #local kello.decal.state matches 1 run function animated_java:dangling_platform/animations/pause_all
execute if score #local kello.decal.state matches 1 run function animated_java:dangling_platform/animations/impact/play
execute if score #local kello.decal.state matches 1 run function animated_java:dangling_platform/apply_variant/static
return 1
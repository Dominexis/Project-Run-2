# scoreboard players add @s kello.component.state 1
# scoreboard players set @s[scores={kello.component.state=2..}] kello.component.state 0

# execute on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/animations/pause_all
# execute if score @s kello.component.state matches 0 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/animations/left/play
# execute if score @s kello.component.state matches 1 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/animations/right/play

execute if score #local kello.decal.state matches 0 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/apply_variant/slow
execute if score #local kello.decal.state matches 1 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:dangling_platform/apply_variant/slow
execute if score #local kello.decal.state matches 0 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/apply_variant/fast
execute if score #local kello.decal.state matches 1 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:dangling_platform/apply_variant/fast
return 1
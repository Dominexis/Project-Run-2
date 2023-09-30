execute positioned as @s run tp @s ~ ~-20000 ~
execute if score @s kello.decal.state matches 0 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:moving_platform/remove/this
execute if score @s kello.decal.state matches 1 on passengers if entity @s[tag=kello.entity.part.platform_pointer] on origin run function animated_java:dangling_platform/remove/this
execute positioned as @s on passengers if entity @s[tag=kello.entity.type.moving_platform,tag=kello.entity.part.pointer] on origin run function kello:entity/decal/component/moving_platform/state/despawn/as
execute on passengers run kill @s
kill @s
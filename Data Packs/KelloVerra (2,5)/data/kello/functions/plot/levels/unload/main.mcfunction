# Special case

execute if entity @s[tag=kello.entity.type.moving_platform] run function kello:entity/decal/component/moving_platform/state/despawn/terminate
execute if entity @s[tag=kello.entity.type.moving_platform] run return 0


# Teminate the bloodline

execute on vehicle run kill @s
execute on passengers on passengers on passengers on passengers if entity @s[type=minecraft:snowball] on origin run tag @s add kello.will_kill
execute on passengers on passengers on passengers on passengers run kill @s
execute on passengers on passengers on passengers if entity @s[type=minecraft:snowball] on origin run tag @s add kello.will_kill
execute on passengers on passengers on passengers run kill @s
execute on passengers on passengers if entity @s[type=minecraft:snowball] on origin run tag @s add kello.will_kill
execute on passengers on passengers run kill @s
execute on passengers if entity @s[type=minecraft:snowball] on origin run tag @s add kello.will_kill
execute on passengers run kill @s
kill @s
return 1
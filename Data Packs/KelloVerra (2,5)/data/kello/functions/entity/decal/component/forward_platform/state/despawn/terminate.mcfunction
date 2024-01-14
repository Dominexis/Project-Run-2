execute positioned as @s run tp @s ~ ~-20000 ~
execute positioned as @s on passengers if entity @s[type=minecraft:snowball,tag=kello.entity.type.forward_platform,tag=kello.entity.part.pointer] on origin run function kello:entity/decal/component/forward_platform/state/despawn/as
execute on passengers run kill @s
kill @s
return 1
scoreboard players add #successcount kello.value 1
scoreboard players set #boolean kello.value 1

execute on origin on passengers if entity @s[type=snowball,tag=kello.decal.pointer_origin] run kill @s

kill @s
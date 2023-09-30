scoreboard players set #boolean kello.value 0
scoreboard players add #total kello.value 1

execute on passengers if entity @s[type=snowball,tag=kello.decal.pointer_controller] run function kello:debug/decal/util/unreference/as_controller_pointer

execute if entity @s[tag=aj.decwheel.root] run function animated_java:decwheel/remove/this
execute if entity @s[tag=aj.launchpad.root] run function animated_java:launchpad/remove/this
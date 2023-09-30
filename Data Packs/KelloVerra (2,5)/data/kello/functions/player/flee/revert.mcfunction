scoreboard players operation #local kello.player.id = @s kello.player.id

tag @s add kello.player.return_target
scoreboard players set #ridelock kello.value 1
execute as @e[type=marker,tag=pr.target,tag=!kello.ignore,tag=kello.entity.type.unflee_marker,distance=..128] if score @s kello.player.id = #local kello.player.id run function kello:player/flee/as_revert
tag @s remove kello.player.return_target

tag @s remove kello.player.flee_revertable
tag @s add kello.player.flee_reverting
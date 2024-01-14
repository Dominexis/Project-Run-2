function help:33b4b67910f59cb0d634dfa8e7d6264b7fdba7719a9a1736e6bcbdbb504d2f5b

execute if entity @s[tag=kello.player.grappling] run scoreboard players set @s kello.entity.state 0
execute if entity @s[tag=kello.player.flee_revertable] run scoreboard players set @s kello.entity.state 2
return 1
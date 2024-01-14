scoreboard players remove @s kello.decal.timer 1

execute if score @s kello.decal.timer matches ..0 if entity @s[tag=!kello.state.force_deactive] run function kello:entity/decal/component/moving_platform/state/idle/activate


scoreboard players set #pass kello.value 1
execute if entity @s[tag=kello.state.force_deactive] run function kello:entity/decal/component/moving_platform/state/deactive/start
scoreboard players set #pass kello.value 0
return 1
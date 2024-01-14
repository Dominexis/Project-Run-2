execute as @e[type=#kello:generic/system,tag=kello.decal] if score @s kello.level.id = #selected kello.level.id if score @s kello.level.var = #selected_variant kello.level.id run function kello:plot/levels/unload/main
execute as @e[type=#kello:generic/system,tag=kello.entity] if score @s kello.level.id = #selected kello.level.id if score @s kello.level.var = #selected_variant kello.level.id run function kello:plot/levels/unload/main
execute as @e[type=#kello:generic/system,tag=kello.will_kill] run kill @s
return 1
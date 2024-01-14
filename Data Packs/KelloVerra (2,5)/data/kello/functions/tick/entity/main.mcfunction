# Ticking

execute if entity @s[tag=kello.entity.ticking] at @s run function kello:entity/process/init



# Kill unknown dropped/duplicated item

execute if entity @s[type=minecraft:item] run kill @s



# Cheap shaft fixing (i swear im out of this headache)

execute if entity @s[tag=kello.entity.type.cogwheel_shaft,tag=kello.attach] if score #player_check_thread_4_sec kello.value matches ..0 run function kello:tick/entity/special_case/fix_detach
return 1
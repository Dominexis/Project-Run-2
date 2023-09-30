
#execute if score #local kello.entity.timer matches 19 run function kello:entity/decal/contraption_controller/state/inv/children/component/gate/0
execute if score #local kello.entity.timer matches 8 run function kello:entity/decal/contraption_controller/state/inv/children/component/gate/1
#execute if score #local kello.entity.timer matches 54 if entity @s[type=block_display] run setblock ~ ~-3 ~ air
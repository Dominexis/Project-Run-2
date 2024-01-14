# Branch to specific components

# Time based components
execute if entity @s[tag=kello.entity.type.gate,tag=kello.entity.type.chapter_1] at @s run function kello:entity/decal/loading_controller/state/run/children/component/gate/chapter_1/frames
execute if entity @s[tag=kello.decal.type.animwheel] run function kello:entity/decal/loading_controller/state/run/children/component/animwheel/frames
return 1

execute if score #local kello.entity.timer matches 19 run function kello:entity/decal/contraption_controller/state/inv/children/component/gate/chapter_1/0
execute if score #local kello.entity.timer matches 11 on passengers if entity @s[tag=aj.gate.locator_origin.locator] on origin positioned as @s run function kello:entity/decal/contraption_controller/state/inv/children/component/gate/chapter_1/1_vis
execute if score #local kello.entity.timer matches 16 run function kello:entity/decal/contraption_controller/state/inv/children/component/gate/chapter_1/1
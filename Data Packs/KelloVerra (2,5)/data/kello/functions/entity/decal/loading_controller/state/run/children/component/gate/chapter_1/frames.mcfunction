execute if score #local kello.entity.timer matches 19 run function kello:entity/decal/loading_controller/state/run/children/component/gate/chapter_1/1
execute if score #local kello.entity.timer matches 1..19 on passengers if entity @s[tag=aj.gate.locator_origin.locator] on origin positioned as @s run function kello:entity/decal/loading_controller/state/run/children/component/gate/chapter_1/2_loc
execute if score #local kello.entity.timer matches 12 run function kello:entity/decal/loading_controller/state/run/children/component/gate/chapter_1/2
execute if score #local kello.entity.timer matches 2 on passengers if entity @s[tag=aj.gate.locator_origin.locator] on origin positioned as @s run function kello:entity/decal/loading_controller/state/run/children/component/gate/chapter_1/3_loc
return 1
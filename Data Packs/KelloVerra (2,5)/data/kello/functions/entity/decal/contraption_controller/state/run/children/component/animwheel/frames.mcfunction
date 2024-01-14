execute if score #local kello.entity.timer = @s kello.entity.timer run function kello:entity/decal/contraption_controller/state/run/children/component/animwheel/trigger
execute if score #local kello.entity.timer matches ..8 run function kello:entity/decal/contraption_controller/state/run/children/component/animwheel/trigger_end

execute if entity @s[tag=!kello.entity.has_animwheel_spinning] run function kello:entity/decal/contraption_controller/state/run/children/animwheel
return 1
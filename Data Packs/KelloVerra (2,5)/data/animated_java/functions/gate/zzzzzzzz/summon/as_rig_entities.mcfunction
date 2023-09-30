scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:gate/on_summon/as_rig_entities
execute if entity @s[tag=aj.gate.bone] run function #animated_java:gate/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.gate.locator_origin] run function animated_java:gate/zzzzzzzz/summon/as_locator_origins

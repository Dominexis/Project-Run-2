scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:falling_platform/on_summon/as_rig_entities
execute if entity @s[tag=aj.falling_platform.bone] run function #animated_java:falling_platform/zzzzzzzz/on_summon/as_bones


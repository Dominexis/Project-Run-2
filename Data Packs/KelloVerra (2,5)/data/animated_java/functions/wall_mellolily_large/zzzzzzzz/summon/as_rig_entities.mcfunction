scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:wall_mellolily_large/on_summon/as_rig_entities
execute if entity @s[tag=aj.wall_mellolily_large.bone] run function #animated_java:wall_mellolily_large/zzzzzzzz/on_summon/as_bones


scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:mellorainn_cluster/on_summon/as_rig_entities
execute if entity @s[tag=aj.mellorainn_cluster.bone] run function #animated_java:mellorainn_cluster/zzzzzzzz/on_summon/as_bones


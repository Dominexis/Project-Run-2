scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:checkpoint_flag/on_summon/as_rig_entities
execute if entity @s[tag=aj.checkpoint_flag.bone] run function #animated_java:checkpoint_flag/zzzzzzzz/on_summon/as_bones


return 1
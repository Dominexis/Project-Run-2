scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #maze_escape:maze_npc/on_summon/as_rig_entities
execute if entity @s[tag=aj.maze_npc.bone] run function #maze_escape:maze_npc/zzzzzzzz/on_summon/as_bones


return 1
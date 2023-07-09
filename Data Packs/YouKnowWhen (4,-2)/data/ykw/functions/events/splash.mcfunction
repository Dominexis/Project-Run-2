scoreboard players set distance ykw.ecolocation 12
function ykw:sound_src/summon
scoreboard players operation @e[distance=..12,tag=pr.target] ykw.visible_for = default ykw.visible_for
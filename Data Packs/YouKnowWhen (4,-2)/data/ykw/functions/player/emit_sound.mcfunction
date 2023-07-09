playsound entity.warden.tendril_clicks player @a

scoreboard players set distance ykw.ecolocation 10
function ykw:sound_src/summon

scoreboard players operation @e[distance=..12,tag=pr.target] ykw.visible_for = default ykw.visible_for

scoreboard players set @s ykw.cooldown 80
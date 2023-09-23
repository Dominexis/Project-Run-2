execute if entity @s[tag=flcme.jumphint] unless score @s flcme.jumptimer matches 0 run title @s subtitle [{"text":"Hint: ","color":"gold"},{"text":"Jump consecutively for a higher jump","color":"yellow"}]
title @s title ""
trigger checkpoint
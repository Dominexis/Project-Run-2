execute if entity @s[tag=flcme.jumphint] run title @s subtitle {"text":"Jump on the red bubbles consecutively, but not immediately.","color":"yellow","type":"text"}
execute if entity @s[tag=flcme.jumphint] run title @s times 0 40 10
execute if entity @s[tag=flcme.jumphint] run title @s title {"text":"Hint:","color":"gold","type":"text"}
kill @s
return 1
scoreboard players add @s inquognito.dialogue.tick 1

execute if score @s inquognito.dialogue.tick matches 1 run function inquognito:logic/plot/boss/defeat

tellraw @s[scores={inquognito.dialogue.tick=60}] [{"text":"??? | ","color":"light_purple"},{"text":"ENOUGH!","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=120}] [{"text":"??? | ","color":"light_purple"},{"text":"Why do you resist?","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=180}] [{"text":"??? | ","color":"light_purple"},{"text":"...It is no matter.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=240}] [{"text":"??? | ","color":"light_purple"},{"text":"I WILL DESTROY YOU MYSELF.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=300}] [{"text":"??? | ","color":"light_purple"},{"text":"GIVE ME THE POWER I REQUIRE, HUNTER!","color":"white"}]

tellraw @s[scores={inquognito.dialogue.tick=360}] [{"text":"Scientist | ","color":"yellow"},{"text":"Hunter... come to me!","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=420}] [{"text":"Scientist | ","color":"yellow"},{"text":"It is... no use.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=480}] [{"text":"Scientist | ","color":"yellow"},{"text":"You must run now if you hope to survive!","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=540}] [{"text":"Scientist | ","color":"yellow"},{"text":"This beam... will take you back out.","color":"white"}]
tellraw @s[scores={inquognito.dialogue.tick=600}] [{"text":"Scientist | ","color":"yellow"},{"text":"Do not worry about me... my fate is already sealed.","color":"white"}]

execute if score @s inquognito.dialogue.tick matches 240 run scoreboard players remove @s inquognito.health 2
execute if score @s inquognito.dialogue.tick matches 240 run effect give @s minecraft:wither 1 2 true

execute if score @s inquognito.dialogue.tick matches 360 run scoreboard players set @s inquognito.boss.health 99

execute if score @s inquognito.dialogue.tick matches 600.. run function inquognito:logic/plot/boss/dialogue/reset

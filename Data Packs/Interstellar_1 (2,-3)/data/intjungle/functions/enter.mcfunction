# This function runs as and at all players that enter your plot
item replace entity @s hotbar.8 with minecraft:golden_helmet{display:{Name:'{"text":"Checkpoint","color":"gold","bold":true,"italic":false,"type":"text"}'}} 1
tag @s add pr.plate_checkpoint

return 1
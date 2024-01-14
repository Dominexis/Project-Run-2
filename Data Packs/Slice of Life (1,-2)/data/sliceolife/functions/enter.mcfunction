# This function runs as and at all players that enter your plot
give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"Checkpoint","color":"gold","italic":false,"type":"text"}'},HideFlags:4,Unbreakable:1b}
tag @s add pr.plate_checkpoint
scoreboard players set @s sliceoflife.carrotonastick 0
return 1
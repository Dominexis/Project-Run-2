# Give items

execute store result score @s pr.load_checkpoint_item run clear @s minecraft:warped_fungus_on_a_stick{load_checkpoint:1b} 0
execute store result score @s pr.save_checkpoint_item run clear @s minecraft:warped_fungus_on_a_stick{save_checkpoint:1b} 0
give @s[scores={pr.load_checkpoint_item=0}] minecraft:warped_fungus_on_a_stick{load_checkpoint:1b,CustomModelData:314101,display:{Name:'{"text":"Load Checkpoint","color":"gold","italic":false,"type":"text"}'},Unbreakable:1b}
give @s[scores={pr.save_checkpoint_item=0}] minecraft:warped_fungus_on_a_stick{save_checkpoint:1b,CustomModelData:314102,display:{Name:'{"text":"Save Checkpoint","color":"green","italic":false,"type":"text"}'},Unbreakable:1b}
clear @s[scores={pr.load_checkpoint_item=2..}] minecraft:warped_fungus_on_a_stick{load_checkpoint:1b} 1
clear @s[scores={pr.save_checkpoint_item=2..}] minecraft:warped_fungus_on_a_stick{save_checkpoint:1b} 1







# Handle checkpoint logic

execute if entity @s[scores={pr.click=1..},predicate=pr:equipment/load_checkpoint] run trigger checkpoint

execute store result score #save_checkpoint pr.value if entity @s[scores={pr.click=1..},predicate=pr:equipment/save_checkpoint]
execute if score #save_checkpoint pr.value matches 1 run function pr:player/checkpoint/mark_self
execute if score #save_checkpoint pr.value matches 1 run tellraw @s {"text":"Checkpoint saved","color":"green","type":"text"}
return 1
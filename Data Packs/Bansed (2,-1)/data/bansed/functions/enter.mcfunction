# This function will run as a player who enters your plot.
# say ENTER PLOT
effect give @s minecraft:water_breathing infinite 1 true
item replace entity @s armor.feet with minecraft:leather_boots{display:{Name:'{"text":" ","type":"text"}',color:16711680},HideFlags:255,Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:binding_curse",lvl:1s}]} 1

#scores
scoreboard players set @s bnsd.sound.jungle -1
return 1
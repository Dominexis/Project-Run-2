execute if score @s frostcobra.tpScore = NUM-2 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"-2","color":"red","type":"text"}
execute if score @s frostcobra.tpScore = NUM-1 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"-1","color":"gold","type":"text"}
execute if score @s frostcobra.tpScore = NUM0 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"+0","color":"white","type":"text"}
execute if score @s frostcobra.tpScore = NUM1 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"+1","color":"green","type":"text"}

return 1
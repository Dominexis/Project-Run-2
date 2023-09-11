execute if score @s frostcobra.tpScore = NUM-2 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"-2","color":"red"}
execute if score @s frostcobra.tpScore = NUM-1 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"-1","color":"gold"}
execute if score @s frostcobra.tpScore = NUM0 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"+0","color":"white"}
execute if score @s frostcobra.tpScore = NUM1 frostcobra.constants run title @a[tag=pr.target,tag=frostcobra.closePlayer] title {"text":"+1","color":"green"}

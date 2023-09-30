# A hardcoded function that will eliminate variant entity to conserve entity count therefore a performance boost

scoreboard players set #boolean kello.value 0
scoreboard players set #termin_count kello.value 0

execute if entity @s[type=item_display,tag=aj.decwheel.root,tag=kello.entity,tag=pr.target,tag=!kello.ignore,tag=kello.decal] run function kello:entity/generic/zzz_condense/root





# Notify

execute if score #boolean kello.value matches 0 run tellraw @p [ {"text":"[kello >> Error ☠] ","color":"red"    },{"text":"Please execute as a valid Animated Java Root decal item display entity.","color":"red"                                                                                                              } ]
execute if score #boolean kello.value matches 1 run tellraw @p [ {"text":"[kello >> Warn ⚠] ","color":"yellow"  },{"text":"By commiting this you have terminate potentially unused rig entity and is irreversible but in an aim to conserve performance.","color":"yellow"                                                     } ]
execute if score #boolean kello.value matches 1 if score #termin_count kello.value matches 1 run tellraw @p [ {"text":"[kello >> Info ℹ] ","color":"aqua"     },{"text":"Count of entity terminated [","color":"aqua"},{"score":{"name":"#termin_count","objective":"kello.value"},"color":"blue"},{"text":"]","color":"aqua"   } ]
execute if score #boolean kello.value matches 1 if score #termin_count kello.value matches 2.. run tellraw @p [ {"text":"[kello >> Info ℹ] ","color":"aqua"   },{"text":"Count of entities terminated [","color":"aqua"},{"score":{"name":"#termin_count","objective":"kello.value"},"color":"blue"},{"text":"]","color":"aqua" } ]
execute if score #boolean kello.value matches 1 if score #termin_count kello.value matches 0 run tellraw @p [ {"text":"[kello >> Info ℹ] ","color":"aqua"   },{"text":"No valid entities are being terminated","color":"aqua"                                                                                                   } ]
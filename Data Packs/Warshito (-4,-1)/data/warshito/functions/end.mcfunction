# End dialogue

scoreboard players add @a[tag=pr.target,tag=dialogue3] warshito.DialogueTicks2 1

tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=1}] [{"text":"<","type":"text"},{"text":"Jalafito","color":"dark_purple","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},"Do you think he will succeed?"]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=41}] [{"text":"<","type":"text"},{"text":"Warshito","color":"dark_green","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},"He is our last hope. But if he die-"]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=101}] [{"text":"<","type":"text"},{"text":"Warshito","color":"dark_green","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},"Look, he's here! Well, do you have it? Great! Now the world is safe. Thank you for helping us."]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=241}] [{"text":"<","type":"text"},{"text":"Jalafito","color":"dark_purple","bold":true,"type":"text"},{"text":"> ","color":"white","bold":false,"type":"text"},"See? I told you he will survive"]

tag @a[tag=pr.target,tag=dialogue3,scores={warshito.DialogueTicks2=242}] remove dialogue3
return 1
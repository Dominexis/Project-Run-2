# End dialogue

scoreboard players add @a[tag=pr.target,tag=dialogue3] warshito.DialogueTicks2 1

tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=1}] [{"text":"<"},{"text":"Jalafito","color":"dark_purple","bold":true},{"text":"> ","color":"reset","bold":false},"Do you think he will succeed?"]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=41}] [{"text":"<"},{"text":"Warshito","color":"dark_green","bold":true},{"text":"> ","color":"reset","bold":false},"He is our last hope. But if he die-"]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=101}] [{"text":"<"},{"text":"Warshito","color":"dark_green","bold":true},{"text":"> ","color":"reset","bold":false},"Look, he's here! Well, do you have it? Great! Now the world is safe. Thank you for helping us."]
tellraw @a[tag=pr.target,scores={warshito.DialogueTicks2=241}] [{"text":"<"},{"text":"Jalafito","color":"dark_purple","bold":true},{"text":"> ","color":"reset","bold":false},"See? I told you he will survive"]

tag @a[tag=pr.target,scores={warshito.DialogueTicks2=242},tag=dialogue3] remove dialogue3
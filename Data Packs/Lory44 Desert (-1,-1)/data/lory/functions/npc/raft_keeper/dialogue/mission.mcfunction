
scoreboard players set @s[scores={lory.npc.raft_keeper.cooldown=..6000}] lory.npc.raft_keeper.cooldown 7000

tellraw @s[scores={lory.npc.raft_keeper.cooldown=7000}] [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"Hello Traveller! Seems like you've reached our land!","color":"gray","type":"text"}]

tellraw @s[scores={lory.npc.raft_keeper.cooldown=6950}] [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"What? What am I doing here you ask? Well... I'm stuck","color":"gray","type":"text"}]

tellraw @s[scores={lory.npc.raft_keeper.cooldown=6900}] [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"I lost my bamboo raft and I cannot get it back","color":"gray","type":"text"}]

tellraw @s[scores={lory.npc.raft_keeper.cooldown=6850}] [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"Can you go & get one for me?","color":"gray","type":"text"}]

tellraw @s[scores={lory.npc.raft_keeper.cooldown=6800}] [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"You'll find it in a barrel inside the house further ahead","color":"gray","type":"text"}]

tellraw @s[scores={lory.npc.raft_keeper.cooldown=6750}] [{"text":"[The Raft Keeper]: ","color":"gold","type":"text"},{"text":"I would have gotten it myself, but I suck at parkour...","color":"gray","type":"text"}]

tag @s[scores={lory.npc.raft_keeper.cooldown=..6750}] add lory.mission_raft
scoreboard players set @s[scores={lory.npc.raft_keeper.cooldown=..6750}] lory.npc.raft_keeper.cooldown 600

scoreboard players remove @s[scores={lory.npc.raft_keeper.cooldown=..7000}] lory.npc.raft_keeper.cooldown 1

return 1
# Check that all the chunks on both sides are loaded

execute if loaded ~00 ~ ~00 if loaded ~16 ~ ~00 if loaded ~32 ~ ~00 if loaded ~48 ~ ~00 if loaded ~64 ~ ~00 if loaded ~80 ~ ~00 if loaded ~00 ~ ~16 if loaded ~16 ~ ~16 if loaded ~32 ~ ~16 if loaded ~48 ~ ~16 if loaded ~64 ~ ~16 if loaded ~80 ~ ~16 if loaded ~00 ~ ~32 if loaded ~16 ~ ~32 if loaded ~32 ~ ~32 if loaded ~48 ~ ~32 if loaded ~64 ~ ~32 if loaded ~80 ~ ~32 if loaded ~00 ~ ~48 if loaded ~16 ~ ~48 if loaded ~32 ~ ~48 if loaded ~48 ~ ~48 if loaded ~64 ~ ~48 if loaded ~80 ~ ~48 if loaded ~00 ~ ~64 if loaded ~16 ~ ~64 if loaded ~32 ~ ~64 if loaded ~48 ~ ~64 if loaded ~64 ~ ~64 if loaded ~80 ~ ~64 if loaded ~00 ~ ~80 if loaded ~16 ~ ~80 if loaded ~32 ~ ~80 if loaded ~48 ~ ~80 if loaded ~64 ~ ~80 if loaded ~80 ~ ~80 run scoreboard players add #loaded_plots pr.value 1
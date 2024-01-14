#plot_off: This function will run when the last player leaves your plot, leaving it empty. Use this to completely reset your plot (remove laggy entities, return blocks to the way they were originally, etc.).

#kill prop entities
kill @e[tag=dtplayers.prop]
kill @e[tag=dtplayers.rocket]
return 1
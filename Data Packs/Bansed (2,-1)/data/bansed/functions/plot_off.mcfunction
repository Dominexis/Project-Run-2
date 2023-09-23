# This function will run when the last player leaves your plot, leaving it empty. Use this to completely reset your plot (remove laggy entities, return blocks to the way they were originally, etc.).
# say PLOT OFF
kill @e[tag=pr.target,tag=bnsd.txtdisplay]
kill @e[tag=pr.target,tag=bnsd.model]
kill @e[tag=pr.target,tag=bnsd.entity]
kill @e[tag=pr.target,tag=bnsd.char]
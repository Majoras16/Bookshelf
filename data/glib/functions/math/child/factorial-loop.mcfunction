# NAME: Factorial Loop
# PATH: glib:math/child/factorial-loop
 
# CHILD OF: glib:math/factorial
 
# CODE: 
scoreboard players operation @s Res *= @s Var2
scoreboard players remove @s Var2 1
execute if entity @s[scores={Var2=2..}] run function glib:math/child/factorial-loop

#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.link:update_link_h
# Parallelizable: true
# Note: @s must have bs.link.to defined (equal to another entity id)

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.link.rh dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link Relative H","color":"aqua"}]
scoreboard objectives add bs.link.to dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Link To","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players operation @s bs.targetId = @s bs.link.to
function bs.id:check

# Relative Orientation
execute at @s run function bs.orientation:get_h/accuracy/10-3
scoreboard players operation @s bs.link.rh = @s bs.ori.h

execute at @e[tag=bs.id.match] run function bs.orientation:get_h/accuracy/10-3
scoreboard players operation @s bs.link.rh -= @s bs.ori.h
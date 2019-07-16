tellraw @a ["",{"text":"DEBUG | ","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/tag @s remove Debug_Entity_Management"},"hoverEvent":{"action":"show_text","value":"Click here to close this debug"}},{"text":"Target Entity Manager","color":"green"}]

tag @e remove Debug_Entity_Manager_Selected
function gunivers-lib:entity/id/check
tag @e[tag=IdMatch,limit=1,sort=nearest] add Debug_Entity_Manager_Selected
execute unless entity @e[tag=Debug_Entity_Manager_Selectedh] run tellraw @a ["",{"text":"No entity selected","color":"gray"},{"text":" [Select]","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select an entity"}}]
execute unless entity @e[tag=Debug_Entity_Manager_Selected] run tellraw @a ["",{"text":"Reminder: This debugger need ID module to work","color":"gray"}]
execute if entity @e[tag=Debug_Entity_Manager_Selected] run tellraw @a ["",{"text":"Selected entity: ","color":"gray"},{"selector":"@e[tag=Debug_Entity_Manager_Selected,limit=1,sort=nearest]"},{"text":"   ID:","color":"gray","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Id as TargetId)"}},{"text":" ","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId "},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Id as TargetId)"}},{"score":{"name":"@e[tag=Debug_Entity_Manager_Selected,limit=1,sort=nearest]","objective":"Id"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId "},"hoverEvent":{"action":"show_text","value":"Select this entity (enter this Id as TargetId)"}},{"text":"   [Select]","color":"dark_aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set @s TargetId"},"hoverEvent":{"action":"show_text","value":"Select an entity"}}]
execute if entity @e[tag=Debug_Entity_Manager_Selected,type=!player] run tellraw @a ["",{"text":"Actions: ","color":"gray"},{"text":"[Go] ","color":"blue","clickEvent":{"action":"run_command","value":"/execute at @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected] run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Go to target"}},{"text":"[Grab] ","color":"green","clickEvent":{"action":"run_command","value":"/tp @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected] ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Bring back target"}},{"text":"[Glow] ","color":"gold","clickEvent":{"action":"run_command","value":"/effect give @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected] glowing 1 1 true"},"hoverEvent":{"action":"show_text","value":"Hightlight target"}},{"text":"[Reset] ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players reset @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected]"},"hoverEvent":{"action":"show_text","value":"Clear all target's scores"}},{"text":"[Kill]","color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected]"},"hoverEvent":{"action":"show_text","value":"Kill target"}}]
execute if entity @e[tag=Debug_Entity_Manager_Selected,type=player] run tellraw @a ["",{"text":"Actions: ","color":"gray"},{"text":"[Go] ","color":"blue","clickEvent":{"action":"run_command","value":"/execute at @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected] run tp @s ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Go to target"}},{"text":"[Grab] ","color":"green","clickEvent":{"action":"run_command","value":"/tp @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected] ~ ~ ~"},"hoverEvent":{"action":"show_text","value":"Bring back target"}},{"text":"[Glow] ","color":"gold","clickEvent":{"action":"run_command","value":"/effect give @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected] glowing 1 1 true"},"hoverEvent":{"action":"show_text","value":"Hightlight target"}},{"text":"[Clear] ","color":"dark_purple","clickEvent":{"action":"run_command","value":"/clear @a[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected]"},"hoverEvent":{"action":"show_text","value":"Clear all items in it's inventory"}},{"text":"[Reset] ","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players reset @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected]"},"hoverEvent":{"action":"show_text","value":"Clear all target's scores"}},{"text":"[Kill]","color":"dark_red","clickEvent":{"action":"run_command","value":"/kill @e[limit=1,sort=nearest,tag=Debug_Entity_Manager_Selected]"},"hoverEvent":{"action":"show_text","value":"Kill target"}}]

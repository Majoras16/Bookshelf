# NAME: Raycast Main
# PATH: Gunivers-Lib:Utils/ExampleSystems/Raycasting/Main
 
# AUTHOR: KubbyDev
 
# VERSION: 1.0
# MINECRAFT: 1.12.2
 
# REQUIEREMENTS: 
# -
 
# INPUT: 
# -
 
# OUTPUT: 
# -
 
# NOTE:  
# -

# CONFIGURATION:
# -

# CODE:

#Summons an invisible amror stand and get the player's orientation
summon armor_stand ~ ~ ~ {Tags:["Raycast","RaycastInit"],NoGravity:1,Marker:1,Invisible:1}
tp @e[tag=RaycastInit] @s
execute @e[tag=RaycastInit] ~ ~ ~ function Gunivers-Lib:Entity/Orientation/Get-Slave

#Calculates the vector corresponding to the player's orientation
execute @e[tag=RaycastInit] ~ ~ ~ function Gunivers-Lib:Entity/Vectors/GetByOrientation
tp @e[tag=RaycastInit] ~ ~1 ~ 

#Set the speed and the collision type of the armor_stand (Stop on hit)
scoreboard players set @e[tag=RaycastInit] Collision 105
scoreboard players set @e[tag=RaycastInit] VectorSpeed 2000

scoreboard players tag @e remove RaycastInit
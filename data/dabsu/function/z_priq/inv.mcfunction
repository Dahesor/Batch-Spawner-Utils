advancement revoke @s only dabsu:inv
execute if data storage dabsu:sys {hibernate:true} run return fail

execute if entity @s[tag=dabsu.used_wand] run return fail
tag @s add dabsu.used_wand
execute unless items entity @s weapon.offhand ghast_tear[custom_data~{dabsu:{is_wand:1b}}] run return fail

#Give back wand
# Tag to allow other datapacks' inventory_changed to avoid triggering during this
tag @s add dabsu.offhand

item replace entity @s weapon.offhand from entity @s weapon
clear @s ghast_tear[custom_data~{dabsu:{is_wand:1b}}]
function dabsu:z_private/text/get
    data modify storage dabsu:run joint set value []
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.0"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.1"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.2"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.3"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.4"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.5"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.6"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.7"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.8"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.9"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.10"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.11"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.12"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.13"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.14"
    data modify storage dabsu:run joint append from storage dabsu:run lang.this."wand_lore.15"
function dabsu:z_private/text/tellraw {text:{text:"wand",color:"green"}}
loot replace entity @s weapon loot dabsu:wand_

tag @s remove dabsu.offhand
function dabsu:z_private_d/uid/get

scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=marker,tag=dabsu.quick_edit,tag=dabsu.analyzing] if score @s uid.dabsu = #this uid.dabsu run return 1


execute if entity @s[tag=dabsu.quick_edit] if predicate dabsu:spacebar run return run function dabsu:z_priq/gui/player/highlight/ctrl_nodes
execute if entity @s[tag=dabsu.quick_edit,tag=dabsu.trial_marker] run return run function dabsu:z_priq/menu/trial/main
execute if entity @s[tag=dabsu.quick_edit] if predicate dabsu:sneaking unless data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run return run function dabsu:z_priq/menu/gen/quick_potential
execute if entity @s[tag=dabsu.quick_edit] unless predicate dabsu:sneaking if data storage dabsu:user data[0].settings{PrimaryQuickAction:"potential"} run return run function dabsu:z_priq/menu/gen/quick_potential

execute if entity @s[tag=dabsu.quick_edit] run scoreboard players set @s trigger.dabsu 101
execute if score @s trigger.dabsu matches 1.. run function dabsu:z_private_d/trigger

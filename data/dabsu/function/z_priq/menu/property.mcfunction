function dabsu:z_private/text/get
function dabsu:z_private_d/templates/single_settings

data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_private_d/lines/initial/props with storage dabsu:run spawner

data modify storage dabsu:run dialog.dialog.body set value {type:"plain_message",contents:"§lQuick Edit Properties"}
#Edit Self
data modify storage dabsu:run run.command set value "function dabsu:z_priq/edit/properties {form:{SpawnCount:$(SpawnCount),SpawnRange:$(SpawnRange),RequiredPlayerRange:$(RequiredPlayerRange),MinSpawnDelay:$(MinSpawnDelay),MaxSpawnDelay:$(MaxSpawnDelay),MaxNearbyEntities:$(MaxNearbyEntities)}}"
function dabsu:z_priq/edit/insert with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.columns set value 3
data modify storage dabsu:run dialog.dialog.actions[0].action.template set from storage dabsu:run final
data modify storage dabsu:run dialog.dialog.actions[0].label set value {text:"Edit Itself",color:"green",}

#Publish Edit To
data modify storage dabsu:run run.command set value "function dabsu:z_priq/edit/properties_publish {form:{SpawnCount:$(SpawnCount),SpawnRange:$(SpawnRange),RequiredPlayerRange:$(RequiredPlayerRange),MinSpawnDelay:$(MinSpawnDelay),MaxSpawnDelay:$(MaxSpawnDelay),MaxNearbyEntities:$(MaxNearbyEntities)}}"
function dabsu:z_priq/edit/insert with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.actions insert 1 value {label:{text:"Edit Same Potentials",color:"yellow"},action:{type:"dynamic/run_command",template:"return fail$(null)"}}
data modify storage dabsu:run dialog.dialog.actions[1].action.template set from storage dabsu:run final
data modify storage dabsu:run dialog.dialog.actions[].width set value 120


##lang
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.menu_property_1
data modify storage dabsu:run dialog.dialog.actions[1].label.text set from storage dabsu:run lang.this.menu_all_light_4
data modify storage dabsu:run dialog.dialog.body.contents set from storage dabsu:run lang.this.menu_property_2


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog
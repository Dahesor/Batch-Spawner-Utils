function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy
function dabsu:z_private_d/templates/confirm

data modify storage dabsu:run dialog.dialog.body.contents set value ["",{text:"Are You Sure?",bold:true},"\nOptimizing the system will remove current selection, check update for every registered spawner, and re-assign potential type ids."]

data modify storage dabsu:run dialog.dialog.body.contents[1].text set from storage dabsu:run lang.this.menu_templates_multi_confirm_2
data modify storage dabsu:run dialog.dialog.body.contents[2] set from storage dabsu:run lang.this.optimize

data modify storage dabsu:run dialog.dialog.yes.action set value {type:"run_command",command:"/trigger trigger.dabsu set 1010"}
function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog
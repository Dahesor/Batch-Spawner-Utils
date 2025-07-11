data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"§6[DaBsu]§r Select by entity nbt="}],\
    columns:3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"boolean",key:"add",on_true:"add",on_false:"set",initial:0b,label:"Add to selection instead of replace"},\
        {type:"text",key:"nbt",label:"§bnbt=§7 Entity in one potential passing will select the entire spawner",initial:"{}",width:400,label_visible:true,multiline:{height:160},max_length:2147483647},\
    ],\
    actions:[\
        {label:"§bSelect",tooltip:"Click to start checking",action:{type:"dynamic/run_command",template:"function dabsu:z_private_d/batch/link/select/nbt_$(add) {form:{obj:\"$(nbt)\"}}"},width:120},\
        {label:{translate:"gui.cancel"},action:{type:"dynamic/run_command",template:"trigger trigger.dabsu set 1001$(none)"},width:120},\
    ]\
}

##lang
data modify storage dabsu:run dialog.dialog.title[0].text set from storage dabsu:run lang.this.temp_selection_by_nbt_1
data modify storage dabsu:run dialog.dialog.inputs[0].label set from storage dabsu:run lang.this.temp_select_spawners_1_lab
data modify storage dabsu:run dialog.dialog.inputs[1].label set from storage dabsu:run lang.this.temp_selection_by_nbt_1_lab
data modify storage dabsu:run dialog.dialog.actions[0].tooltip set from storage dabsu:run lang.this.temp_selection_by_nbt_1_tip
data modify storage dabsu:run dialog.dialog.actions[0].label set from storage dabsu:run lang.this.temp_selection_by_nbt_2_lab
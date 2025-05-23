data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Light Rules..."}],\
    columns:2,\
    inputs:[\
        {type:"boolean",key:"use",label:"Use Custom Spawn Rules",initial:true,on_true:"1",on_false:"0"},\
        {type:"number_range",key:"b_min",start:0,end:15,initial:0,label:"Min Block Light",step:1,width:200},\
        {type:"number_range",key:"b_max",start:0,end:15,initial:15,label:"Max Block Light",step:1,width:200},\
        {type:"number_range",key:"s_min",start:0,end:15,initial:0,label:"Min Sky Light",step:1,width:200},\
        {type:"number_range",key:"s_max",start:0,end:15,initial:15,label:"Max Sky Light",step:1,width:200},\
    ],\
    actions:[\
        {id:"ds",label:{translate:"gui.done",color:"aqua"},on_submit:{type:"command_template",template:"function dabsu:z_private_dialog/batch/link/pots/overrite_all_light {form:{index:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}"}},\
        {id:"ds",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1203$(null)"}},\
    ]\
}
trigger input.dabsu
return 1

dialog show @s {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Edit Light Rules..."}],\
    columns:2,\
    inputs:[\
        {type:"boolean",key:"use",label:"Use Custom Spawn Rules",initial:true,on_true:"",on_false:"-"},\
        {type:"number_range",key:"b_min",start:0,end:15,initial:15,label:"Min Block Light",step:1,width:200},\
        {type:"number_range",key:"b_max",start:0,end:15,initial:15,label:"Max Block Light",step:1,width:200},\
        {type:"number_range",key:"s_min",start:0,end:15,initial:15,label:"Min Sky Light",step:1,width:200},\
        {type:"number_range",key:"s_max",start:0,end:15,initial:15,label:"Max Sky Light",step:1,width:200},\
    ],\
    actions:[\
        {id:"ds",label:{translate:"gui.done",color:"aqua"},on_submit:{type:"command_template",template:"trigger input.dabsu set $(use)1$(b_min)$(b_max)$(s_min)$(s_max)"}},\
        {id:"ds",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(use)"}},\
    ]\
}
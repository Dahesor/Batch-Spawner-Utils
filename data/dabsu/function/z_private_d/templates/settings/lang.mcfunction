data modify storage dabsu:run dialog.dialog set value {\
    "type": "multi_action",\
    "title": ["[",{"text": "DaBsu","color": "green"},"] ",{"translate": "options.language.title"}],\
    "can_close_with_escape": true,\
    "pause": false,\
    "after_action": "close",\
    "body": [\
    ],\
    "actions": [\
        {\
            "label": "English",\
            "action": {\
                "type": "run_command",\
                "command": "/trigger lang.dabsu set 0"\
            }\
        },\
        {\
            "label": "简体中文",\
            "action": {\
                "type": "run_command",\
                "command": "/trigger lang.dabsu set 1"\
            }\
        }\
    ]\
}
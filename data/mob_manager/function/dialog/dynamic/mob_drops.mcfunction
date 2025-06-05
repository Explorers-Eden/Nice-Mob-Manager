$dialog show @s \
{\
  "type":"minecraft:confirmation",\
  "body":[\
    {\
      "type":"minecraft:item",\
      "item":{\
        "id":"minecraft:command_block",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          }\
        }\
      },\
      "description":{\
        "translate":"menu.mob_manager.mob_drops.description",\
        "fallback":"Configure Chances Of Mob Drops:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      "type":"minecraft:number_range",\
      "key":"husksand",\
      "width": 256,\
      "label":{\
        "translate":"menu.mob_manager.option.husksand",\
        "fallback":"Sand From Husk Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(husksand_initial)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"batmembrane",\
      "width": 256,\
      "label":{\
        "translate":"menu.mob_manager.option.batmembrane",\
        "fallback":"Phantom Membrane From Bat Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(batmembrane_initial)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"dragonegg",\
      "width": 256,\
      "label":{\
        "translate":"menu.mob_manager.option.dragonegg",\
        "fallback":"Dragon Egg From Ender Dragon Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(dragonegg_initial)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"dragonelytra",\
      "width": 256,\
      "label":{\
        "translate":"menu.mob_manager.option.dragonelytra",\
        "fallback":"Elytra From Ender Dragon Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(dragonelytra_initial)\
    },\
    {\
      "type":"minecraft:number_range",\
      "key":"shulkerdrop",\
      "width": 256,\
      "label":{\
        "translate":"menu.mob_manager.option.shulkerdrop",\
        "fallback":"2nd Shulker Shell From Shulker Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(shulkerdrop_initial)\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title":{\
    "translate":"menu.mob_manager.mob_drops.title",\
    "fallback":"Additional Mob Drops"\
  },\
  "title":{\
    "translate":"menu.mob_manager.main.title",\
    "fallback":"Nice Mob Manager"\
  },\
  "yes":{\
    "label":{\
      "translate":"option.mob_manager.confirm",\
      "fallback":"Confirm"\
    },\
    "action":{\
      "type":"minecraft:dynamic/run_command",\
      "template":"$(command_template)"\
    }\
  },\
  "no":{\
    "label":{\
      "translate":"gui.back"\
    },\
    "action":{\
      "type":"minecraft:show_dialog",\
      "dialog":"mob_manager:main"\
    }\
  }\
}
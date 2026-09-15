$dialog show @s \
{\
  "type": "minecraft:confirmation",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:wandering_trader_spawn_egg",\
        "components": {\
          "minecraft:tooltip_display": {\
            "hide_tooltip": true\
          }\
        }\
      },\
      "description": {\
        "translate": "menu.mob_manager.wandering_trader.settings.description",\
        "fallback": "Configure Wandering Trader Settings:"\
      }\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:single_option",\
      "key": "customname",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.wandering_trader.customname",\
        "fallback": "Custom Random Names"\
      },\
      "options": [\
        {\
          "id": "enabled",\
          "display": {\
            "translate": "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            "color": "green"\
          }\
        },\
        {\
          "id": "disabled",\
          "display": {\
            "translate": "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            "color": "red"\
          },\
          "initial": $(customname_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "spawnmsg",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.wandering_trader.spawnmsg",\
        "fallback": "Announcement After Spawn"\
      },\
      "options": [\
        {\
          "id": "disabled",\
          "display": {\
            "translate": "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            "color": "red"\
          }\
        },\
        {\
          "id": "actionbar",\
          "display": {\
            "translate": "option.mob_manager.actionbar",\
            "fallback": "Action Bar",\
            "color": "green"\
          },\
          "initial": $(spawnmsg_actionbar_initial)\
        },\
        {\
          "id": "chat",\
          "display": {\
            "translate": "option.mob_manager.chat",\
            "fallback": "Chat",\
            "color": "green"\
          },\
          "initial": $(spawnmsg_chat_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "spawnglow",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.wandering_trader.spawnglow",\
        "fallback": "Glow Effect After Spawn"\
      },\
      "options": [\
        {\
          "id": "enabled",\
          "display": {\
            "translate": "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            "color": "green"\
          }\
        },\
        {\
          "id": "disabled",\
          "display": {\
            "translate": "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            "color": "red"\
          },\
          "initial": $(spawnglow_initial)\
        }\
      ]\
    }\
  ],\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "external_title": {\
    "translate": "menu.mob_manager.wandering_trader.title",\
    "fallback": "Wandering Trader Settings"\
  },\
  "title": {\
    "translate": "menu.mob_manager.main.title",\
    "fallback": "Nice Mob Manager"\
  },\
  "yes": {\
    "label": {\
      "translate": "option.mob_manager.confirm",\
      "fallback": "Confirm"\
    },\
    "action": {\
      "type": "minecraft:dynamic/run_command",\
      "template": "$(command_template)"\
    }\
  },\
  "no": {\
    "label": {\
      "translate": "gui.back"\
    },\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "mob_manager:main"\
    }\
  }\
}
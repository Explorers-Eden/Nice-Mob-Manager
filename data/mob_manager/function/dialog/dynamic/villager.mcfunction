$dialog show @s \
{\
  "type": "minecraft:confirmation",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:villager_spawn_egg",\
        "components": {\
          "minecraft:tooltip_display": {\
            "hide_tooltip": true\
          }\
        }\
      },\
      "description": {\
        "translate": "menu.mob_manager.villager.settings.description",\
        "fallback": "Configure Villager Settings:"\
      }\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:single_option",\
      "key": "customname",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.villager.customname",\
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
      "key": "breeddiversity",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.villager.breeddiversity",\
        "fallback": "Random Baby Types"\
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
          "initial": $(breeddiversity_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "restock",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.villager.restock",\
        "fallback": "Unlimited Restocks"\
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
          "initial": $(restock_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "gossip",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.villager.gossip",\
        "fallback": "Gossip"\
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
          "initial": $(gossip_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "talking",\
      "width": 256,\
      "label": {\
        "translate": "option.mob_manager.villager.talking",\
        "fallback": "Talking Villager"\
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
          "initial": $(talking_actionbar_initial)\
        },\
        {\
          "id": "chat",\
          "display": {\
            "translate": "option.mob_manager.chat",\
            "fallback": "Chat",\
            "color": "green"\
          },\
          "initial": $(talking_chat_initial)\
        }\
      ]\
    },\
  ],\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "external_title": {\
    "translate": "menu.mob_manager.villager.title",\
    "fallback": "Villager Settings"\
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
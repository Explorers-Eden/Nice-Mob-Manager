$dialog show @s \
{\
  "type": "minecraft:confirmation",\
  "body": [\
    {\
      "type": "minecraft:item",\
      "item": {\
        "id": "minecraft:spawner",\
        "components": {\
          "minecraft:tooltip_display": {\
            "hide_tooltip": true\
          }\
        }\
      },\
      "description": {\
        "translate": "menu.mob_manager.rarity_mobs.settings.description",\
        "fallback": "Configure Rarity Mob Settings:"\
      }\
    }\
  ],\
  "inputs": [\
    {\
      "type": "minecraft:single_option",\
      "key": "customname",\
      "label": {\
        "translate": "option.mob_manager.rarity_mobs.customname",\
        "fallback": "Custom Names"\
      },\
      "options": [\
        {\
          "id": "enabled",\
          "display": {\
            "translate": "option.nice_mobs.enabled",\
            "fallback": "Enabled",\
            "color": "green"\
          }\
        },\
        {\
          "id": "disabled",\
          "display": {\
            "translate": "option.nice_mobs.disabled",\
            "fallback": "Disabled",\
            "color": "red"\
          },\
          "initial": $(customname_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:single_option",\
      "key": "particles",\
      "label": {\
        "translate": "option.mob_manager.rarity_mobs.particles",\
        "fallback": "Particles"\
      },\
      "options": [\
        {\
          "id": "enabled",\
          "display": {\
            "translate": "option.nice_mobs.enabled",\
            "fallback": "Enabled",\
            "color": "green"\
          }\
        },\
        {\
          "id": "disabled",\
          "display": {\
            "translate": "option.nice_mobs.disabled",\
            "fallback": "Disabled",\
            "color": "red"\
          },\
          "initial": $(particles_initial)\
        }\
      ]\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "spawntime",\
      "label": {\
        "translate": "option.nice_mobs.rarity_mobs.spawntime",\
        "fallback": "Time (Sec) Before Getting A Rarity"\
      },\
      "start": 0,\
      "end": 600,\
      "step": 1,\
      "initial": $(spawntime)\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "spawnchance",\
      "label": {\
        "translate": "option.nice_mobs.rarity_mobs.spawnchance",\
        "fallback": "Rarity Spawn Chance"\
      },\
      "label_format": "options.percent_value",\
      "start": 0,\
      "end": 100,\
      "step": 1,\
      "initial": $(spawnchance_initial)\
    },\
    {\
      "type": "minecraft:number_range",\
      "key": "health",\
      "label": {\
        "translate": "option.nice_mobs.rarity_mobs.health",\
        "fallback": "Health"\
      },\
      "start": 1,\
      "end": 500,\
      "step": 1,\
      "initial": $(health)\
    },\
    {\
      "type": "minecraft:text",\
      "key": "validmobs",\
      "label": {\
        "translate": "option.nice_mobs.rarity_mobs.validmobs",\
        "fallback": "Entity Tag List For Valid Mob Types"\
      },\
      "initial": "$(validmobs)",\
      "max_length": 1024\
    },\
    {\
      "type": "minecraft:text",\
      "key": "loottable",\
      "label": {\
        "translate": "option.nice_mobs.rarity_mobs.loottable",\
        "fallback": "On Death Loot Table"\
      },\
      "initial": "$(loottable)",\
      "max_length": 1024\
    }\
  ],\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "external_title": {\
    "translate": "menu.mob_manager.rarity_mobs_common.title",\
    "fallback": "Common"\
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
      "template": "function mob_manager:dialog/command_template/rarity_mobs {type:$(type)$(command_template)"\
    }\
  },\
  "no": {\
    "label": {\
      "translate": "gui.back"\
    },\
    "action": {\
      "type": "minecraft:show_dialog",\
      "dialog": "mob_manager:rarity_mobs"\
    }\
  }\
}
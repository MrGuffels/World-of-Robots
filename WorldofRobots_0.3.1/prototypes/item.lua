data:extend({
--Logistic Mine--
--- PASSIVE CHEST
  {
    type = "item",
    name = "logistic-chest-passive-provider-1",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "b[storage]-c[logistic-chest-passive-provider]",
    place_result = "logistic-chest-passive-provider-1",
    stack_size = 50
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-1",
    icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = nil},
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "impact",
        percent = 60
      }
    },
    fast_replaceable_group = "container",
    inventory_size = 60,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/logistic-chest-passive-provider.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.09375, 0}
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

---Passive Drill
  {
    type = "item",
    name = "logistic-mining-drill-2",
    icon = "__WorldofRobots__/graphics/logistic-mining-drill-2.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b[logistic-mining-drill]",
    place_result = "logistic-mining-drill-2",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "logistic-mining-drill-2",
    enabled = false,
    normal =
    {
      energy_required = 2,
      enabled = false,
      ingredients =
      {
        {"electronic-circuit", 2},
        {"iron-gear-wheel", 2},
        {"iron-plate", 3},
        {"electric-mining-drill", 1},
        {"logistic-chest-passive-provider", 1}
      },
      result = "logistic-mining-drill-2"
    },
  },
  
  {
    type = "mining-drill",
    name = "logistic-mining-drill-2",
    icon = "__WorldofRobots__/graphics/logistic-mining-drill-2.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "logistic-mining-drill-2"},
    max_health = 300,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{ -1.5, -1.5}, {1.5, 0}},
    input_fluid_box = (not data.is_demo) and
    {
      production_type = "input-output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_connections =
      {
        { position = {-2, 0} },
        { position = {2, 0} },
        { position = {0, 2} },
    { position = {0, -2} },
      }
    } or nil,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N.png",
        line_length = 8,
        width = 98,
        height = 113,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -8.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N.png",
          line_length = 8,
          width = 196,
          height = 226,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -8),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(3.5, -1),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(3.75, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S.png",
        line_length = 8,
        width = 98,
        height = 109,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S.png",
          line_length = 8,
          width = 196,
          height = 219,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(0, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W.png",
        line_length = 8,
        width = 105,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-3.5, -1),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W.png",
          line_length = 8,
          width = 211,
          height = 197,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-3.75, -0.75),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    shadow_animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 101,
        height = 111,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1.5, -7.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 201,
          height = 223,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -7.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 110,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(6, -0.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 221,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(6.25, -0.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 100,
        height = 103,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, 2.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 200,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, 2.5),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-shadow.png",
        flags = { "shadow" },
        line_length = 8,
        width = 114,
        height = 97,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(1, -0.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-shadow.png",
          flags = { "shadow" },
          line_length = 8,
          width = 229,
          height = 195,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1.25, -0.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch.png",
        line_length = 1,
        width = 100,
        height = 111,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6.5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch.png",
          line_length = 1,
          width = 200,
          height = 222,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6.5),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch.png",
        line_length = 1,
        width = 100,
        height = 110,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -6),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch.png",
          line_length = 1,
          width = 200,
          height = 219,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -5.75),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch.png",
        line_length = 1,
        width = 100,
        height = 113,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -7.5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch.png",
          line_length = 1,
          width = 200,
          height = 226,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -7.5),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch.png",
        line_length = 1,
        width = 100,
        height = 108,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(0, -5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch.png",
          line_length = 1,
          width = 200,
          height = 220,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -6),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-patch-shadow.png",
        flags = { "shadow" },
        line_length = 1,
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-patch-shadow.png",
          flags = { "shadow" },
          line_length = 1,
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-patch-shadow.png",
        flags = { "shadow" },
        line_length = 1,
        width = 112,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(6, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-patch-shadow.png",
          flags = { "shadow" },
          line_length = 1,
          width = 224,
          height = 198,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(6, 0),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-patch-shadow.png",
        flags = { "shadow" },
        line_length = 1,
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-patch-shadow.png",
          flags = { "shadow" },
          line_length = 1,
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-patch-shadow.png",
        flags = { "shadow" },
        line_length = 1,
        width = 110,
        height = 98,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(5, 0),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-patch-shadow.png",
          flags = { "shadow" },
          line_length = 1,
          width = 220,
          height = 197,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(5, -0.25),
          scale = 0.5
        }
      }
    },
    input_fluid_patch_shadow_animations =
    {
      north =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 102,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -3),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      east =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 102,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -2),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 209,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -1.25),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      south =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 100,
        height = 98,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(-1, -1),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 204,
          height = 204,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(-0.5, -2.5),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      },
      west =
      {
        priority = "high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-drill-received-shadow.png",
        tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
        line_length = 8,
        width = 96,
        height = 99,
        frame_count = 64,
        animation_speed = 0.5,
        direction_count = 1,
        shift = util.by_pixel(0, -1.5),
        run_mode = "forward-then-backward",
        hr_version = {
          priority = "high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-drill-received-shadow.png",
          tint = { r=0.5, g=0.5, b=0.5, a=0.5 },
          line_length = 8,
          width = 198,
          height = 206,
          frame_count = 64,
          animation_speed = 0.5,
          direction_count = 1,
          shift = util.by_pixel(1, -2),
          run_mode = "forward-then-backward",
          scale = 0.5
        }
      }
    },
    input_fluid_patch_window_sprites =
    {
      north =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-window-background.png",
        line_length = 1,
        width = 72,
        height = 54,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1, 1),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-window-background.png",
          line_length = 1,
          width = 142,
          height = 107,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1, 0.75),
          scale = 0.5
        }
      },
      east =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-window-background.png",
        line_length = 1,
        width = 51,
        height = 74,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-11.5, -11),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-window-background.png",
          line_length = 1,
          width = 104,
          height = 147,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11, -11.25),
          scale = 0.5
        }
      },
      south =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-window-background.png",
        line_length = 1,
        width = 71,
        height = 44,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(-1.5, -29),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-window-background.png",
          line_length = 1,
          width = 141,
          height = 86,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-1.75, -29),
          scale = 0.5
        }
      },
      west =
      {
        priority = "extra-high",
        filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-window-background.png",
        line_length = 1,
        width = 41,
        height = 69,
        frame_count = 1,
        direction_count = 1,
        shift = util.by_pixel(11.5, -11.5),
        hr_version = {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-window-background.png",
          line_length = 1,
          width = 80,
          height = 137,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11.5, -11.25),
          scale = 0.5
        }
      }
    },

    input_fluid_patch_window_flow_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-flow.png",
          line_length = 1,
          width = 68,
          height = 50,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -1),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-flow.png",
            line_length = 1,
            width = 136,
            height = 99,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -0.75),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-flow.png",
          line_length = 1,
          width = 41,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-11.5, -11),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-flow.png",
            line_length = 1,
            width = 82,
            height = 139,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-11.5, -11.25),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-flow.png",
          line_length = 1,
          width = 68,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-flow.png",
            line_length = 1,
            width = 136,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2.5, -29.5),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-flow.png",
          line_length = 1,
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(11, -11),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-flow.png",
            line_length = 1,
            width = 83,
            height = 140,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(10.75, -11),
            scale = 0.5
          }
        }
      },
    },
    input_fluid_patch_window_base_sprites =
    {
      {
        north =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-N-fluid-background.png",
          line_length = 1,
          width = 70,
          height = 48,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, 0),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-N-fluid-background.png",
            line_length = 1,
            width = 138,
            height = 94,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, 0),
            scale = 0.5
          }
        },
        east =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-E-fluid-background.png",
          line_length = 1,
          width = 42,
          height = 70,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-12, -11),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-E-fluid-background.png",
            line_length = 1,
            width = 84,
            height = 138,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-12, -11),
            scale = 0.5
          }
        },
        south =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-S-fluid-background.png",
          line_length = 1,
          width = 70,
          height = 40,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(-2, -29),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-S-fluid-background.png",
            line_length = 1,
            width = 138,
            height = 80,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-2, -29),
            scale = 0.5
          }
        },
        west =
        {
          priority = "extra-high",
          filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-W-fluid-background.png",
          line_length = 1,
          width = 42,
          height = 69,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(12, -10.5),
          hr_version = {
            priority = "extra-high",
            filename = "__base__/graphics/entity/electric-mining-drill/hr-electric-mining-drill-W-fluid-background.png",
            line_length = 1,
            width = 83,
            height = 137,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(11.75, -10.75),
            scale = 0.5
          }
        }
      },
    },

    mining_speed = 0.6,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "110kW",
    mining_power = 3,
    resource_searching_radius = 2.739,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "mining-drill",
    
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

--- Invisible Electric Pole
  {
    type = "item",
    name = "invisible-electric-pole",
    icon = "__base__/graphics/icons/medium-electric-pole.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-b[medium-electric-pole]",
    place_result = "invisible-electric-pole",
    stack_size = 50
  },
  {
    type = "electric-pole",
    name = "invisible-electric-pole",
    icon = "__base__/graphics/icons/medium-electric-pole.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 10, mining_time = 10, result = "invisible-electric-pole"},
    max_health = 100,
    corpse = "small-remnants",
    track_coverage_during_build_by_moving = true,
    fast_replaceable_group = "electric-pole",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    maximum_wire_distance = 12,
    supply_area_distance = 3.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      filename = "__base__/graphics/entity/medium-electric-pole/medium-electric-pole.png",
      priority = "high",
      width = 0,
      height = 0,
      direction_count = 1,
      shift = {1.4, -1.0}
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {0, 0},
          green = {0, 0},
          red = {0, 0}
        },
        wire =
        {
          copper = {0, 0},
          green = {0, 0},
          red = {0, 0}
        }
      },
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  },
})

--Roboport Big Pole--
data:extend(
{
  {
    type = "item",
    name = "roboport-pole",
    icon = "__base__/graphics/icons/big-electric-pole.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-c[big-electric-pole]",
    place_result = "roboport-pole",
    stack_size = 1
  },
  
  {
    type = "electric-pole",
    name = "roboport-pole",
    icon = "__base__/graphics/icons/big-electric-pole.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "iron-plate"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances =
    {
      {type = "fire",percent = 100}
    },
    collision_box = {{-0, -0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    drawing_box = {{-1, -3}, {1, 0.5}},
    maximum_wire_distance = 64,
    supply_area_distance = 3,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      filename = "__base__/graphics/entity/big-electric-pole/big-electric-pole.png",
      priority = "high",
      width = 168,
      height = 165,
      direction_count = 4,
      shift = {1.6, -1.1}
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.7, 0},
          green = {1.8, 0},
          red = {3.6, 0}
        },
        wire =
        {
          copper = {0, -3.125},
          green = {-0.59375, -3.125},
          red = {0.625, -3.125}
        }
      },
      {
        shadow =
        {
          copper = {3.1, 0.2},
          green = {2.3, -0.3},
          red = {3.8, 0.6}
        },
        wire =
        {
          copper = {-0.0625, -3.125},
          green = {-0.5, -3.4375},
          red = {0.34375, -2.8125}
        }
      },
      {
        shadow =
        {
          copper = {2.9, 0.06},
          green = {3.0, -0.6},
          red = {3.0, 0.8}
        },
        wire =
        {
          copper = {-0.09375, -3.09375},
          green = {-0.09375, -3.53125},
          red = {-0.09375, -2.65625}
        }
      },
      {
        shadow =
        {
          copper = {3.1, 0.2},
          green = {3.8, -0.3},
          red = {2.35, 0.6}
        },
        wire =
        {
          copper = {-0.0625, -3.1875},
          green = {0.375, -3.5},
          red = {-0.46875, -2.90625}
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12,
      priority = "extra-high-no-scale"
    },
  },
})
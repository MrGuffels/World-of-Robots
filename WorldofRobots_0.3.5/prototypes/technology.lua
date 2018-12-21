data.raw.technology["logistic-robotics"] = nil
--data.raw.technology["construction-robotics"] = nil Still Broke AF
data.raw.technology["logistic-system"] = nil
data.raw.technology["robotics"] = nil

data.raw.technology["logistics"] = nil
data.raw.technology["logistics-2"] = nil
data.raw.technology["logistics-3"] = nil
data.raw.technology["stack-inserter"].prerequisites = {"advanced-electronics"}
data.raw.technology["railway"].prerequisites = {"engine"}
data.raw.technology["automobilism"].prerequisites = {"engine"}
data.raw.technology["braking-force-3"].prerequisites = {"braking-force-2"}
data.raw.technology["personal-roboport-equipment"].prerequisites = {"solar-panel-equipment"}
data:extend({
  {
    type = "technology",
    name = "black-out-the-skies",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    icon_size = 128,
    effects = 
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-buffer"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60
      }
    },
    prerequisites = {},
    unit =
    {
      count = 10,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 5
    },
  }
})
data.raw.technology["construction-robotics"] =
{
  type = "technology",
  name = "construction-robotics",
  icon = "__base__/graphics/technology/construction-robotics.png",
  icon_size = 128,
  effects = {},
  prerequisites = {},
  unit =
    {
      count = 1,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 1
    },
    order = "c-k-a",
}
data.raw.technology["character-logistic-slots-1"] = 
{
  type = "technology",
  name = "character-logistic-slots-1",
  icon = "__base__/graphics/technology/character-logistic-slots.png",
  icon_size = 128,
  effects =
  {
    {
      type = "character-logistic-slots",
      modifier = 6
    }
  },
  prerequisites = {"black-out-the-skies"},
  unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 15
    },
    upgrade = true,
    order = "c-k-e-a"
}
data.raw.technology["character-logistic-trash-slots-1"] = 
{
  type = "technology",
  name = "character-logistic-trash-slots-1",
  icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
  icon_size = 128,
  effects =
  {
    {
      type = "character-logistic-trash-slots",
      modifier = 6
    }
  },
  prerequisites = {"black-out-the-skies"},
  unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 15
    },
  upgrade = true,
  order = "c-k-f-a"
}
data.raw.technology["automation"].effects = 
{
  {
    type = "unlock-recipe",
    recipe = "assembling-machine-1"
  },
  {
    type = "unlock-recipe",
    recipe = "fast-inserter"
  },
  {
    type = "unlock-recipe",
    recipe = "long-handed-inserter"
  }
}
data.raw.technology["worker-robots-speed-1"] = 
{
  type = "technology",
  name = "worker-robots-speed-1",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-speed",
      modifier = 0.5
    }
  },
  prerequisites = {"black-out-the-skies"},
  unit =
  {
    count = 50,
    ingredients =
    {
      {"science-pack-1", 1}
    },
    time = 15
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-speed-2"] = 
{
  type = "technology",
  name = "worker-robots-speed-2",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-speed",
      modifier = 0.5
    }
  },
  prerequisites = {"worker-robots-speed-1"},
  unit =
  {
    count = 100,
    ingredients =
    {
      {"science-pack-1", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-speed-3"] = 
{
  type = "technology",
  name = "worker-robots-speed-3",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-speed",
      modifier = 0.6
    }
  },
  prerequisites = {"worker-robots-speed-2"},
  unit =
  {
    count = 50,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-speed-4"] = 
{
  type = "technology",
  name = "worker-robots-speed-4",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-speed",
      modifier = 0.6
    }
  },
  prerequisites = {"worker-robots-speed-3"},
  unit =
  {
    count = 150,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-speed-5"] = 
{
  type = "technology",
  name = "worker-robots-speed-5",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.7
    }
  },
  prerequisites = {"worker-robots-speed-4"},
  unit =
  {
    count = 250,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "c-k-f-d"
}
data.raw.technology["worker-robots-speed-6"] = 
{
  type = "technology",
  name = "worker-robots-speed-6",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.7
    }
  },
  prerequisites = {"worker-robots-speed-5"},
  unit =
  {
    count = 250,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "c-k-f-d"
}
data.raw.technology["worker-robots-speed-7"] =
{
  type = "technology",
  name = "worker-robots-speed-7",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.75
    }
  },
  prerequisites = {"worker-robots-speed-6"},
  unit =
  {
    count = 500,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1},
      {"high-tech-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "c-k-f-e"
}
data.raw.technology["worker-robots-speed-8"] =
{
  type = "technology",
  name = "worker-robots-speed-8",
  icon = "__base__/graphics/technology/worker-robots-speed.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-speed",
      modifier = 0.8
    }
  },
  prerequisites = {"worker-robots-speed-7"},
  unit =
  {
    count_formula = "2^(L-8)*500",
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1},
      {"high-tech-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 60
  },
  max_level = "infinite",
  upgrade = true,
  order = "c-k-f-e"
}
data.raw.technology["worker-robots-storage-1"] = 
{
  type = "technology",
  name = "worker-robots-storage-1",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"black-out-the-skies"},
  unit =
  {
    count = 50,
    ingredients =
    {
      {"science-pack-1", 1}
    },
    time = 15
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-storage-2"] = 
{
  type = "technology",
  name = "worker-robots-storage-2",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-1"},
  unit =
  {
    count = 100,
    ingredients =
    {
      {"science-pack-1", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-storage-3"] = 
{
  type = "technology",
  name = "worker-robots-storage-3",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-2"},
  unit =
  {
    count = 50,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-storage-4"] = 
{
  type = "technology",
  name = "worker-robots-storage-4",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects = {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-3"},
  unit =
  {
    count = 150,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1}
    },
    time = 30
  },
  upgrade = true,
  order = "c-k-f-a",
}
data.raw.technology["worker-robots-storage-5"] = 
{
  type = "technology",
  name = "worker-robots-storage-5",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-4"},
  unit =
  {
    count = 250,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "c-k-f-d"
}
data.raw.technology["worker-robots-storage-6"] = 
{
  type = "technology",
  name = "worker-robots-storage-6",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-5"},
  unit =
  {
    count = 250,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "c-k-f-d"
}
data.raw.technology["worker-robots-storage-7"] =
{
  type = "technology",
  name = "worker-robots-storage-7",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-6"},
  unit =
  {
    count = 500,
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1},
      {"high-tech-science-pack", 1}
    },
    time = 60
  },
  upgrade = true,
  order = "c-k-f-e"
}
data.raw.technology["worker-robots-storage-8"] =
{
  type = "technology",
  name = "worker-robots-storage-8",
  icon = "__base__/graphics/technology/worker-robots-storage.png",
  icon_size = 128,
  effects =
  {
    {
      type = "worker-robot-storage",
      modifier = 1
    }
  },
  prerequisites = {"worker-robots-storage-7"},
  unit =
  {
    count_formula = "2^(L-8)*500",
    ingredients =
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
      {"science-pack-3", 1},
      {"production-science-pack", 1},
      {"high-tech-science-pack", 1},
      {"space-science-pack", 1}
    },
    time = 60
  },
  max_level = "infinite",
  upgrade = true,
  order = "c-k-f-e"
}

---Logistic Mine---
data:extend({
  {
    type = "technology",
    name = "logistic-mining-drill",
    icon_size = 32,
    icon = "__WorldofRobots__/graphics/logistic-mining-drill-2.png",
    effects =
    {
     {
       type = "unlock-recipe",
       recipe = "logistic-mining-drill-2"
     }
    
   },
   prerequisites = {"black-out-the-skies"},
    unit =
    {
     count = 30,
     ingredients =
     {
       {"science-pack-1", 1},
     },
     time = 10
   },
   order = "c-k-d",
  }
})
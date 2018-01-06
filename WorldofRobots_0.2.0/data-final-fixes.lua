
--Enable/Disable Recipes
data.raw.recipe["transport-belt"].enabled = false
data.raw.recipe["fast-transport-belt"].enabled = false
data.raw.recipe["express-transport-belt"].enabled = false
data.raw.recipe["underground-belt"].enabled = false
data.raw.recipe["fast-underground-belt"].enabled = false
data.raw.recipe["express-underground-belt"].enabled = false
data.raw.recipe["splitter"].enabled = false
data.raw.recipe["fast-splitter"].enabled = false
data.raw.recipe["express-splitter"].enabled = false

--Recipe Changes
data.raw.recipe["logistic-robot"].ingredients = 
{
      {"flying-robot-frame", 1},
      {"electronic-circuit", 2}
}
data.raw.recipe["construction-robot"].ingredients = 
{
      {"flying-robot-frame", 1},
      {"electronic-circuit", 2}
}
data.raw.recipe["lab"].ingredients = 
{
  {"electronic-circuit", 10},
  {"iron-gear-wheel", 10},
  {"iron-plate", 4}
}
data.raw.recipe["science-pack-2"].ingredients = 
{
   {"inserter", 1},
   {"flying-robot-frame", 1}
}
data.raw.recipe["flying-robot-frame"] = 
{
  type = "recipe",
  name = "flying-robot-frame",
  energy_required = 2,
  enabled = false,
  ingredients = 
    {
      {"copper-plate", 2},
      {"iron-gear-wheel", 4},
      {"electronic-circuit", 2}
    },
  result = "flying-robot-frame",
}
data.raw.recipe["logistic-chest-passive-provider"] = 
{
  type = "recipe",
  name = "logistic-chest-passive-provider",
  enabled = false,
  ingredients =
    {
      {"iron-chest", 1},
      {"electronic-circuit", 3},
    },
    result = "logistic-chest-passive-provider",
    requester_paste_multiplier = 4
}
data.raw.recipe["logistic-chest-active-provider"] = 
{
  type = "recipe",
  name = "logistic-chest-active-provider",
  enabled = false,
  ingredients =
    {
      {"iron-chest", 1},
      {"electronic-circuit", 3},
    },
  result = "logistic-chest-active-provider",
  requester_paste_multiplier = 4
}
data.raw.recipe["logistic-chest-storage"] = 
{
  type = "recipe",
  name = "logistic-chest-storage",
  enabled = false,
  ingredients =
    {
      {"iron-chest", 1},
      {"electronic-circuit", 3},
    },
  result = "logistic-chest-storage",
  requester_paste_multiplier = 4
}
data.raw.recipe["logistic-chest-requester"] = 
{
  type = "recipe",
  name = "logistic-chest-requester",
  enabled = false,
  ingredients =
    {
      {"iron-chest", 1},
      {"electronic-circuit", 3},
    },
  result = "logistic-chest-requester",
  requester_paste_multiplier = 4
}
data.raw.recipe["roboport"] = 
{
  type = "recipe",
  name = "roboport",
  enabled = false,
  energy_required = 5,
  ingredients =
    {
      {"iron-plate", 15},
      {"iron-gear-wheel", 15},
      {"electronic-circuit", 15}
    },
    result = "roboport",
}
--[[
data.raw.equipment["personal-roboport"].ingredients = 
{
  {"electronic-circuit", 10},
  {"iron-gear-wheel", 20},
  {"iron-plate", 20}
}
]]--
--Technology Changes

data.raw.technology["logistic-robotics"] = nil
--data.raw.technology["construction-robotics"] = nil ********FIX********
data.raw.technology["logistic-system"] = nil
data.raw.technology["robotics"] = nil
data.raw.technology["worker-robots-speed-1"].prerequisites = {}
data.raw.technology["worker-robots-storage-1"].prerequisites = {}
data.raw.technology["construction-robotics"] =
{
  type = "technology",
  name = "construction-robotics",
  icon = "__base__/graphics/technology/construction-robotics.png",
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
data.raw.technology["personal-roboport-equipment"] = 
{
  type = "technology",
  name = "personal-roboport-equipment",
  icon = "__base__/graphics/technology/personal-roboport-equipment.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "personal-roboport-equipment"
    },
  },
  prerequisites = {"black-out-the-skies"},
  unit =
  {
    count = 100,
    ingredients = 
    {
      {"science-pack-1", 1},
      {"science-pack-2", 1},
    },
    time = 30
  },
  order = "c-k-d-zz",
}
data.raw.technology["worker-robots-speed-1"].unit = 
{
  count = 50,
  ingredients =
  {
    {"science-pack-1", 1}
  },
  time = 30
}
data.raw.technology["worker-robots-speed-2"].unit = 
{
  count = 100,
  ingredients =
  {
    {"science-pack-1", 1},
    {"science-pack-2", 1}
  },
  time = 30
}
data.raw.technology["worker-robots-speed-3"].unit = 
{
  count = 200,
  ingredients =
  {
    {"science-pack-1", 1},
    {"science-pack-2", 1}
  },
  time = 30
}

data.raw.technology["logistics"] = nil
data.raw.technology["logistics-2"] = nil
data.raw.technology["logistics-3"] = nil
data.raw.technology["stack-inserter"].prerequisites = {"advanced-electronics"}
data.raw.technology["railway"].prerequisites = {"engine"}
data.raw.technology["automobilism"].prerequisites = {"engine"}
data.raw.technology["braking-force-3"].prerequisites = {"braking-force-2"}


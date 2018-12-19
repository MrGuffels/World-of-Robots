require("prototypes.item")
require("prototypes.technology")
require("prototypes.entities")

--World of Robots Core--

---Enable/Disable Recipes---
data.raw.recipe["transport-belt"].enabled = false
data.raw.recipe["fast-transport-belt"].enabled = false
data.raw.recipe["express-transport-belt"].enabled = false
data.raw.recipe["underground-belt"].enabled = false
data.raw.recipe["fast-underground-belt"].enabled = false
data.raw.recipe["express-underground-belt"].enabled = false
data.raw.recipe["splitter"].enabled = false
data.raw.recipe["fast-splitter"].enabled = false
data.raw.recipe["express-splitter"].enabled = false

---Recipe Changes---

data.raw.recipe["logistic-robot"].ingredients = 
{
      {"flying-robot-frame", 1},
      {"copper-plate", 1}
}

data.raw.recipe["construction-robot"].ingredients = 
{
      {"flying-robot-frame", 1},
      {"iron-plate", 1}
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
      {"copper-plate", 1},
      {"iron-gear-wheel", 2},
      {"electronic-circuit", 1}
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

data.raw.recipe["logistic-chest-buffer"] = 
{
  type = "recipe",
  name = "logistic-chest-buffer",
  enabled = false,
  ingredients =
    {
      {"iron-chest", 1},
      {"electronic-circuit", 3},
    },
  result = "logistic-chest-buffer",
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
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 10}
    },
    result = "roboport",
}
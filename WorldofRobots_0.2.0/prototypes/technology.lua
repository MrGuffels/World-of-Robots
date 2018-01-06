data:extend(
{
  {
    type = "technology",
    name = "black-out-the-skies",
    icon = "__base__/graphics/technology/logistic-robotics.png",
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
  },
}
)
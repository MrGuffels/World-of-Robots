
local function buildLogisticMine(entity)
   local logistic16 = entity.surface.create_entity{name="logistic-chest-passive-provider-1", position=entity.position, force=entity.force}
   logistic16.destructible = true
   logistic16.minable = true
   
   local invipole27 = entity.surface.create_entity{name="invisible-electric-pole", position=entity.position, force=entity.force}
   invipole27.destructible = false
   invipole27.minable = false
   return true
end

local function buildRoboportBigPole(entity)
   local pole = entity.surface.create_entity{name="roboport-pole", position=entity.position, force=entity.force}
   pole.destructible = false
   return true
   end

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "logistic-mining-drill-2" then
    buildLogisticMine(event.created_entity) 
  end
    
  if event.created_entity.name == "roboport" then
    buildRoboportBigPole(event.created_entity) 
  end   
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.name == "logistic-mining-drill-2" then
    buildLogisticMine( event.created_entity ) 
  end
    
  if event.created_entity.name == "roboport" then
    buildRoboportBigPole( event.created_entity) 
  end
end)

script.on_event(defines.events.on_player_mined_entity, function(event)
  
  if event.entity.name == "logistic-mining-drill-2" then
    center = event.entity.position
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
    name = "logistic-chest-passive-provider"}) do
    entity.destroy() end
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
    name = "invisible-electric-pole"}) do
    entity.destroy() end  
  end
  
  if event.entity.name == "roboport" then
    center = event.entity.position
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-2, center.y-2}, {center.x+2, center.y+2}},
    name = "roboport-pole"}) do
    entity.destroy() end 
  end
end)

script.on_event(defines.events.on_robot_mined_entity, function(event)
  if event.entity.name == "logistic-mining-drill-2" then
    center = event.entity.position
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
    name = "logistic-chest-passive-provider"}) do
    entity.destroy() end
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
    name = "invisible-electric-pole"}) do
    entity.destroy() end
  end
  
  if event.entity.name == "roboport" then
    center = event.entity.position
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-2, center.y-2}, {center.x+2, center.y+2}},
    name = "roboport-pole"}) do
    entity.destroy() end
  end
end)

script.on_event(defines.events.on_entity_died, function(event)

  if event.entity.name == "logistic-mining-drill-2" then
    center = event.entity.position
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
    name = "logistic-chest-passive-provider"}) do
    entity.destroy() end
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-0.5, center.y-0.5}, {center.x+0.5, center.y+0.5}},
    name = "invisible-electric-pole"}) do
    entity.destroy() end
  end
  
  if event.entity.name == "roboport" then
    center = event.entity.position
    for _, entity in pairs(event.entity.surface.find_entities_filtered{
    area = {{center.x-2, center.y-2}, {center.x+2, center.y+2}},
    name = "roboport-pole"}) do
    entity.destroy()end
  end 
end)
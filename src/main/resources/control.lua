require "config"

local function debug(player, message)
	if debug_enabled then
		player.print('Quick Start: '..message)
	end
end

local function add_item(player, inventory, item, itemcount)
	if game.item_prototypes[item] ~= nul then
		inv = player.get_inventory(inventory)
		inv.insert{name = item, count = itemcount}
	else
		debug(player, 'Undefined item ignored: '..item);
	end
end

local function add_weapon_item(player, item, itemcount)
	add_item(player, defines.inventory.player_guns, item, itemcount)
end

local function add_armour_item(player, item, itemcount)
	add_item(player, defines.inventory.player_armor, item, itemcount)
end

local function add_main_item(player, item, itemcount)
	add_item(player, defines.inventory.player_main, item, itemcount)
end

local function add_quickbar_item(player, item, itemcount)
	add_item(player, defines.inventory.player_quickbar, item, itemcount)
end

local function add_tool_item(player, item, itemcount)
	add_item(player, defines.inventory.player_tools, item, itemcount)
end

script.on_event(defines.events.on_player_created, function(event)
	
	local player = game.players[event.player_index]

	add_quickbar_item(player, "transport-belt", 100)
	add_quickbar_item(player, "pipe", 100)
	add_quickbar_item(player, "pipe-to-ground", 50)
	add_quickbar_item(player, "inserter", 50)
	add_quickbar_item(player, "wooden-chest", 10)
	add_quickbar_item(player, "iron-chest", 10)
	
	add_main_item(player, "lab", 1)
	add_main_item(player, "offshore-pump", 2)
	add_main_item(player, "steam-engine", 20)
	add_main_item(player, "electric-mining-drill", 4)
	add_main_item(player, "stone-furnace", 8)
	add_main_item(player, "assembling-machine-1", 2)
	add_main_item(player, "coal", 400)
	add_main_item(player, "raw-wood", 400)
	add_main_item(player, "iron-plate", 392)
	add_main_item(player, "copper-plate", 400)
	add_main_item(player, "steel-plate", 200)
	add_main_item(player, "stone", 400)
	
	add_tool_item(player, "steel-axe", 5)
	add_armour_item(player, "heavy-armor", 1)
	add_weapon_item(player, "submachine-gun", 1)

	debug(player, 'Completed successfully.')

end)

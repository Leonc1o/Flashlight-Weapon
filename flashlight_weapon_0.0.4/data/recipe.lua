-- Copyright (C) 2023  Leoncio

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.


local flashlightRecipe = {}

data:extend({
-- Torchlight --
    {
        type = "recipe",
        name = "torch-light-recipe",
        icon = "__flashlight_weapon__/graphics/torch.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = true,
        category = "crafting",
        group = "combat",
        subgroup = "gun",
        energy_required = 25,
        result = "fw-torch-light",
        ingredients =
        {
            { "wood", 10 },
            { "iron-ore", 5} ,
            { "copper-cable", 6} ,
        },
    },
-- Torchlight Ammo --
    {
        type = "recipe",
        name = "fw-torch-ammo-recipe",
        icon = "__flashlight_weapon__/graphics/torch_fuel.png", --change
        icon_mimaps = 4,
        icon_size = 64,
        enabled = true,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        energy_required = 2,
        result = "fw-torch-ammo",
        ingredients =
        {
            { "coal", 3 },
            { "iron-ore", 2},
            { "copper-ore", 2},
        },
    },
-- Flashlight --
    {
        type = "recipe",
        name = "fw-flash-light-recipe",
        icon = "__flashlight_weapon__/graphics/flashlight.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "gun",
        energy_required = 50,
        result = "fw-flash-light",
        ingredients =
        {
            { "battery", 20 },
            { "iron-plate", 20} ,
            { "copper-cable", 10 },
            { "iron-stick", 8 },
        },
    },
-- Flashlight Ammo --
    {
        type = "recipe",
        name = "fw-flashlight-ammo-recipe",
        icon = "__flashlight_weapon__/graphics/battery.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        energy_required = 5,
        result = "fw-flashlight-ammo",
        ingredients =
        {
            { "battery", 2 },
            { "copper-plate", 2},
            { "iron-stick", 1 },
        },
    },
})

return flashlightRecipe
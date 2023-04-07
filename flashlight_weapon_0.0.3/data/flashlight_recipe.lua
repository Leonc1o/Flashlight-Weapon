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


-- Flashlight --

data:extend({
  {
    type = "recipe",
    name = "flash-light",
    icon = "__flashlight_weapon__/graphics/flashlight.png",
    icon_mimaps = 4,
    icon_size = 64,
    enabled = true,
    category = "crafting",
    group = "combat",
    subgroup = "gun",
    energy_required = 10,
    result = "flash-light",
    ingredients =
    {
      { "copper-plate", 20 },
      { "iron-plate", 20} ,
      { "copper-cable", 5 },
      { "iron-stick", 4 },
    },
  },
})

-- Flashlight Battery --

data:extend({
  {
    type = "recipe",
    name = "light-battery",
    icon = "__flashlight_weapon__/graphics/battery.png",
    icon_mimaps = 4,
    icon_size = 64,
    enabled = true,
    category = "crafting",
    group = "combat",
    subgroup = "ammo",
    energy_required = 5,
    result = "light-battery",
    ingredients =
    {
      { "copper-plate", 5 },
      { "iron-plate", 5} ,
      { "copper-cable", 6 },
      { "iron-stick", 1 },
    },
  },
})


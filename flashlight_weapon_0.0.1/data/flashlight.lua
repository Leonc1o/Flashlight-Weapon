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


-- New Ammo Category --

data:extend ({
  {
    type = "ammo-category",
    name = "light-bullet",
  }
})

-- Flashlight --

data:extend({
  {
    type = "gun",
    name = "flash-light",
    icon = "__flashlight_weapon__/graphics/flashlight.png",
    icon_size = "64",
    icon_mimaps = 4,
    stack_size = 1,
    subgroup = "gun",
    order = "1a",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "light-bullet",
      damage_modifier = 1,
      ammo_consumption_modifier = 0.01,
      lead_target_for_projectile_speed = 0,
      warmup = 0,
      cooldown = 1,
      min_range = 0,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.125,
      range = 30,
    },
  },
})
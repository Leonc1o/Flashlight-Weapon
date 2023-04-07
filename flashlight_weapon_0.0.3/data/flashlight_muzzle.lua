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


local flashlight_muzzle_animation = require("__flashlight_weapon__/data/flashlight_muzzle_animation")

  -- Light bullet --

data:extend({

  {
    type = "explosion",
    name = "explosion-flashlight",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = flashlight_muzzle_animation.normal(),
    rotate = true,
    light = { intensity = 0.06, size = 11, color = { r = 228, g = 248, b = 133 } },
  },
})
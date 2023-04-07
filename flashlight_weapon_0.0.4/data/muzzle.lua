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


local flashlightMuzzle = {}

local flashlightMuzzleAnimation = require("__flashlight_weapon__/data/muzzle_animation")

data:extend({
-- Flashlight Muzzle --
  {
    type = "explosion",
    name = "fw-explosion-flashlight",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = flashlightMuzzleAnimation.normal(),
    rotate = true,
    light = {intensity = 0.15, size = 11, color = { r = 1.000, g = 0.888, b = 0.419}},
    light_intensity_factor_final = 0.15,
    light_intensity_factor_initial = 0.01,
    light_size_factor_initial = 0.1,
    light_size_factor_final = 0.1,
  },
-- Torchlight Muzzle --
  {
      type = "explosion",
      name = "fw-explosion-torchlight",
      flags = {"not-on-map", "hidden"},
      subgroup = "explosions",
      animations = flashlightMuzzleAnimation.normal(),
      rotate = true,
      light = {intensity = 0.15, size = 30, color = { r = 1.000, g = 0.888, b = 0.419}},
      light_intensity_factor_final = 0.15,
      light_intensity_factor_initial = 0.01,
      light_size_factor_initial = 0.1,
      light_size_factor_final = 0.1,
  },
})

return flashlightMuzzle





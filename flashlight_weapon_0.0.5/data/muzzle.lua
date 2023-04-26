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
-- Flare Explosion --
  {
    type = "explosion",
    name = "fw-explosion-light-flare",
    flags = { "not-on-map" },
    render_layer = "ground-patch",
    light_intensity_factor_final = 1.0,
    light_intensity_factor_initial = 1.0,
    light_size_factor_initial = 1.0,
    light_size_factor_final = 1.0,
    light = { intensity = 0.5, size = 80, color = { r = 250, g = 210, b = 150 } },
    animations =
    {
        filename = "__flashlight_weapon__/graphics/flare_animation.png",
        priority = "high",
        width = 64,
        height = 64,
        frame_count = 16,
        line_length = 8,
        animation_speed = 32/60,
        scale = 0.7,
        draw_as_glow = true,
        blend_mode = "additive",
        shift = util.by_pixel(0, 2),
    },
  },
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





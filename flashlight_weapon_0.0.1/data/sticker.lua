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


local math3d = require "math3d"

data:extend({

    -- Light Bullet --
    {
        type = "sticker",
        name = "light-bullet-sticker",
        flags = { "not-on-map" },
        damage_interval = 70,
        damage_per_tick = { amount = 1, type = "physical" },
        duration_in_ticks = 60 * 5,
        target_movement_modifier = 0.05,
        animation =
        {
            filename = "__base__/graphics/entity/sparks/sparks-01.png",
            line_length = 19,
            width = 39,
            height = 34,
            frame_count = 19,
            blend_mode = "normal",
            animation_speed = 1,
            tint = { r = 125, g = 255, b = 244, a = 1 },
            shift = math3d.vector2.mul({ -0.078125, -1.8125 }, 0.1),
            draw_as_glow = true,
            scale = 0.5,
        },
    },
})

-- Flashlight Impact Light --

data:extend({
    {
      type = "explosion",
      name = "explosion-hit-flash",
      flags = { "not-on-map" },
      subgroup = "explosions",
      light = { intensity = 0.06, size = 19, color = { r = 228, g = 248, b = 133, a = 1 } },
      animations = {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 2,
          shift = { 0, 0 },
          scale = 0,
        },
      },
    },
  })
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


local flashlightFlareProjectileAnimation = {}

flashlightFlareProjectileAnimation.normal = function()
    return
    { -- frame total = 16,,,,,,,,,,,, line lenght = 8
        { --new # 1-4 up
            filename = "__flashlight_weapon__/graphics/flare_animation.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            x = 0,
            y = 64,
            frame_count = 4,
            animation_speed = 32/60,
            scale = 1,
            draw_as_glow = true,
            shift = util.by_pixel(0, 2),
            tint = { r = 245, g = 90, b = 0, a = 0.6 },
        },
        { --new # 5-8 up
            filename = "__flashlight_weapon__/graphics/flare_animation.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            x = 64 * 4,
            y = 64,
            frame_count = 4,
            animation_speed = 32/60,
            scale = 1.1,
            draw_as_glow = true,
            shift = util.by_pixel(0, 2),
            tint = { r = 240, g = 100, b = 25, a = 0.6 },
        },
        { --new # 9-12 bottom
            filename = "__flashlight_weapon__/graphics/flare_animation.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            x = 0,
            y = 0,
            frame_count = 4,
            animation_speed = 32/60,
            scale = 1.2,
            draw_as_glow = true,
            shift = util.by_pixel(0, 2),
            tint = { r = 185, g = 70, b = 10, a = 0.6 },
        },
        { --new # 13-16 bottom
            filename = "__flashlight_weapon__/graphics/flare_animation.png",
            priority = "extra-high",
            width = 64,
            height = 64,
            x = 64 * 4,
            y = 0,
            frame_count = 4,
            animation_speed = 32/60,
            scale = 1.3,
            draw_as_glow = true,
            shift = util.by_pixel(0, 2),
            tint = { r = 245, g = 145, b = 30, a = 0.6 },
        },
    }
end

return flashlightFlareProjectileAnimation
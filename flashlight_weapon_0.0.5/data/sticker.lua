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


-- Stickers, Impact Explosions and Smoke --
local flashlightStickers = {}

local math3d = require "math3d"

-- Stickers --
data:extend({
-- Light Fire Sticker -- -- change the animation OBS!!!!!! Make own sticker animation or modify existing in __base__
    {
        type = "sticker",
        name = "fw-light-fire-sticker",
        flags = { "not-on-map" },
        damage_interval = 70,
        damage_per_tick = { amount = 4, type = "fire" },
        duration_in_ticks = 60 * 5,
        target_movement_modifier = 0.05,
        animation =
        {
            filename = "__base__/graphics/entity/sparks/sparks-01.png",
            flags = { "smoke" }, --new
            line_length = 19,
            width = 39,
            height = 34,
            frame_count = 19,
            axially_symmetrical = false, -- new
            blend_mode = "additive", -- "additive-soft" -- new
            animation_speed = 1,
            tint = { r = 125, g = 255, b = 244, a = 1 },
            shift = math3d.vector2.mul({ -0.078125, -1.8125 }, 0.1),
            draw_as_glow = true,
            scale = 0.8,
            priority = "high",
        },
    },
-- Light Avoidance Sticker --
    {
        type = "sticker",
        name = "fw-light-avoidance-sticker",
        flags = { "not-on-map" },
        duration_in_ticks = 60 * 2,
        target_movement_modifier = -1.15,
    },
-- Light Slow Sticker -- -- change the animation OBS!!!!!! Make own sticker animation or modify existing in __base__
    {
        type = "sticker",
        name = "fw-light-slow-sticker",
        flags = { "not-on-map" },
        duration_in_ticks = 60 * 2,
        target_movement_modifier = 0.05,
        animation =
        {
            filename = "__base__/graphics/entity/sparks/sparks-01.png",
            flags = { "smoke" }, --new
            line_length = 19,
            width = 39,
            height = 34,
            frame_count = 19,
            axially_symmetrical = false, -- new
            blend_mode = "additive-soft",
            animation_speed = 1,
            tint = { r = 1.000, g = 0.888, b = 0.419, a = 1 },
            shift = math3d.vector2.mul({ -0.078125, -1.8125 }, 0.1),
            draw_as_glow = true,
            scale = 0.65,
            priority = "high",
        },
    },
})
-- Flashlight Impact Explosion --
data:extend({
    {
        type = "explosion",
        name = "fw-explosion-hit-flash",
        flags = { "not-on-map" },
        subgroup = "explosions",
        light = {intensity = 0.15, size = 19, color = { r = 1.000, g = 0.888, b = 0.419}},
        animations =
        {
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
-- Flare Smoke --
data:extend({
    {
        type = "smoke-with-trigger",
        name = "fw-flare-smoke",
        flags = {"not-on-map"},
        affected_by_wind = false,
        cyclic = true,
        duration = 60 * 60 * 3,
        fade_away_duration = 1 * 60,
        spread_duration = 10,
        action_cooldown = 30,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    type = "create-explosion",
                    entity_name = "fw-explosion-light-flare",
                }
            }
        },
        animation =
        {
            filename = "__flashlight_weapon__/graphics/flare_capsule.png",
            priority = "high",
            width = 128,
            height = 128,
            frame_count = 1,
            scale = 0.5, -- this capsule will stay on the ground with the explosion
        },
        working_sound =
        {
            apparent_volume = 0.5,
            audible_distance_modifier = 0.5,
            max_sounds_per_type = 3,
            sound =
            {
                aggregation =
                {
                    max_count = 1,
                    remove = false
                },
                variations =
                {
                    {
                        filename = "__flashlight_weapon__/sounds/flare_1.ogg",
                        volume = 0.7
                    },
                    {
                        filename = "__flashlight_weapon__/sounds/flare_2.ogg",
                        volume = 0.7
                    },
                }
            }
        },
    },
})
return flashlightStickers

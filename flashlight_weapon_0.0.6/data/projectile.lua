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


local flashlightProjectile = {}

local flare_animation = require("__flashlight_weapon__/data/flare_animation") -- takes information from bullet_animation.lua

flare_smoke =
{
    {
        name = "smoke-train-stop",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
    }
}

data:extend({
-- Flare Projectile --
    {
        type = "projectile",
        name = "fw-flare-capsule-projectile",
        flags = {"not-on-map"},
        acceleration = 0.005,
        animation = flare_animation.normal(),
        smoke = flare_smoke,
        light = {intensity = 0.9, size = 60, color = { r = 250, g = 210, b = 150 } },
        force_condition = "not-same",
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-entity",
                        entity_name = "fw-flare-smoke",
                        tile_collision_mask = { "water-tile" },
                    },
                    {
                        type = "create-entity",
                        entity_name = "water-splash",
                        tile_collision_mask = { "ground-tile" }
                    },
                }
            }
        },
    },
-- Torch Projectile --   
    {
        type = "projectile",
        name = "fw-projectile-light-coal-normal",
        flags = { "not-on-map" },
        collision_box = { { -10, -9 }, { 10, 9 } },--{ { -10.5, -9.5 }, { 10.5, 10.5 } }, -- { { -left, -top }, { right, bottom } }
        acceleration = -0,
        direction_only = true,
        hit_at_collision_position = true,
        force_condition = "enemy",
        action =
        {
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                {
                    type = "create-sticker",
                    sticker = "fw-light-avoidance-sticker",
                    show_in_tooltip = false,
                },
                {
                    type = "create-sticker",
                    sticker = "fw-light-slow-sticker",
                    show_in_tooltip = false,
                },
                {
                    type = "push-back",
                    distance = 0.25,
                    show_in_tooltip = false,
                },
            }
        },
        {
            type = "area",
            radius = 10,
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-sticker",
                        sticker = "fw-light-avoidance-sticker",
                        show_in_tooltip = false,
                    },
                    {
                        type = "create-sticker",
                        sticker = "fw-light-slow-sticker",
                        show_in_tooltip = false,
                    },
                    {
                        type = "push-back",
                        distance = 0.25,
                        show_in_tooltip = false,
                    },
                },
            },
        },
        },
        animation =
        -- {
        --     filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
        --     priority = "extra-high",
        --     width = 34,
        --     height = 38,
        --     frame_count = 13,
        --     animation_speed = 2,
        --     shift = { 0, 0 },
        --     scale = 0,
        -- },
        {
            filename = "__flashlight_weapon__/graphics/blank.png",
            width = 1,
            height = 1,
        }
    },
-- Flashlight Projectile --
    {
        type = "projectile",
        name = "fw-projectile-light-bullet-normal",
        flags = { "not-on-map" },
        collision_box = { { -4, -4 }, { 4, 4 } },
        acceleration = 0,
        piercing_damage = 0,
        hit_at_collision_position = false,--true,
        force_condition = "enemy",
        light = {intensity = 0.15, size = 11, color = { r = 1.000, g = 0.888, b = 0.419}},
        action =
        {
            type = "direct",
            action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                        type = "create-entity",
                        entity_name = "fw-explosion-hit-flash",
                        },
                        {
                        type = "create-sticker",
                        sticker = "fw-light-avoidance-sticker",
                        },
                        {
                        type = "create-sticker",
                        sticker = "fw-light-fire-sticker",
                        show_in_tooltip = false,
                        },
                        {
                        type = "push-back",
                        distance = 0.5,
                        show_in_tooltip = false,
                        },
                    }
                },
                {
                type = "area",
                radius = 10,
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                        type = "create-sticker",
                        sticker = "fw-light-avoidance-sticker",
                        },
                        {
                        type = "create-sticker",
                        sticker = "fw-light-fire-sticker",
                        show_in_tooltip = false,
                        },
                        {
                        type = "push-back",
                        distance = 0.5,
                        show_in_tooltip = false,
                        },
                    },
                },
                },
        },
        animation =
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
    }
})

return flashlightProjectile
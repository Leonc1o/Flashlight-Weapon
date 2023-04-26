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


local flashlightAmmo = {}

data:extend({
-- Torch Ammo --
    {
        type = "ammo",
        name = "fw-torch-ammo",
        icon = "__flashlight_weapon__/graphics/torch_fuel.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            size = 64,
            filename = "__flashlight_weapon__/graphics/torch_fuel.png", --change
            scale = 0.25,
            mipmap_count = 4,
        },
        subgroup = "ammo",
        order = "1a",
        stack_size = 200,
        magazine_size = 20,
        ammo_type =
        {
            category = "fw-light-coal",
            cooldown_modifier = 0.1,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "fw-projectile-light-coal-normal",
                    starting_speed = 2,
                    min_range = 0,
                    max_range = 2,
                    source_effects =
                    {
                        {
                            type = "create-explosion",
                            entity_name = "fw-explosion-torchlight",
                        }
                    }
                }
            }
        }
    },
-- Flashlight Ammo --
    {
        type = "ammo",
        name = "fw-flashlight-ammo",
        icon = "__flashlight_weapon__/graphics/battery.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            size = 64,
            filename = "__flashlight_weapon__/graphics/battery.png",
            scale = 0.25,
            mipmap_count = 4,
        },
        subgroup = "ammo",
        order = "1b",
        stack_size = 200,
        magazine_size = 10,
        ammo_type =
        {
            category = "fw-light-bullet",
            cooldown_modifier = 0.1,
            target_type = "position",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "fw-projectile-light-bullet-normal",
                    starting_speed = 2,
                    direction_deviation = 0,
                    range_deviation = 0,
                    min_range = 0,
                    max_range = 10,
                    source_effects =
                    {
                        {
                            type = "create-explosion",
                            entity_name = "fw-explosion-flashlight",
                        }
                    }
                }
            }
        }
    },
})

return flashlightAmmo
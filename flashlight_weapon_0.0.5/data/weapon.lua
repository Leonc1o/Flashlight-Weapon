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


local flashlightWeapon = {}

data:extend({
-- Flare Capsule --
    {
        type = "capsule",
        name = "fw-flare-capsule",
        icon = "__flashlight_weapon__/graphics/flare_capsule.png",
        icon_size = 128,
        subgroup = "capsule",
        order = "a[capsule]",
        stack_size = 50,
        capsule_action =
        {
            type = "throw",
            attack_parameters =
            {
                type = "projectile",
                activation_type = "throw",
                ammo_category = "capsule",
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 50,
                ammo_type =
                {
                    category = "capsule",
                    target_type = "position",
                    action =
                    {
                        {
                            type = "direct",
                            action_delivery =
                            {
                                type = "projectile",
                                projectile = "fw-flare-capsule-projectile",
                                starting_speed = 0.3
                            }
                        },
                    }
                },
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
                            filename = "__flashlight_weapon__/sounds/flare_gun_1.ogg",
                            volume = 0.2
                        },
                        {
                            filename = "__flashlight_weapon__/sounds/flare_gun_2.ogg",
                            volume = 0.7
                        },
                        {
                            filename = "__flashlight_weapon__/sounds/flare_gun_3.ogg",
                            volume = 0.7
                        },
                    }
                }
            }
        }
    },
-- Torch --
    {
        type = "gun",
        name = "fw-torch-light",
        icon = "__flashlight_weapon__/graphics/torch.png",
        icon_size = 64,
        icon_mimaps = 4,
        stack_size = 1,
        subgroup = "gun",
        order = "1a",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "fw-light-coal",
            damage_modifier = 1,
            ammo_consumption_modifier = 0.01,
            lead_target_for_projectile_speed = 0,
            cooldown = 1,
            range = 20,
            range_mode = "center-to-center",
            movement_slow_down_factor = 0,
            projectile_creation_distance = 0,
        },
    },
-- Flashlight --
    {
        type = "gun",
        name = "fw-flash-light",
        icon = "__flashlight_weapon__/graphics/flashlight.png",
        icon_size = 64,
        icon_mimaps = 4,
        stack_size = 1,
        subgroup = "gun",
        order = "1b",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "fw-light-bullet",
            damage_modifier = 1,
            ammo_consumption_modifier = 0.01,
            lead_target_for_projectile_speed = 0,
            warmup = 0,
            cooldown = 1,
            min_range = 0,
            movement_slow_down_factor = 0,
            projectile_creation_distance = 0,--1.125,
            range = 30,
        },
    },
})

return flashlightWeapon
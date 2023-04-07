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


-- Flashlight Battery --

data:extend({
  {
      type = "ammo",
      name = "light-battery",
      icon = "__flashlight_weapon__/graphics/battery.png",
      icon_size = 64,
      icon_mimaps = 4,
      pictures =
      {
          {
              size = 64,
              filename = "__flashlight_weapon__/graphics/battery.png",
              scale = 0.25,
              mipmap_count = 4,
          },
      },
      subgroup = "ammo",
      order = "1a",
      stack_size = 200,
      magazine_size = 10,
      ammo_type =
      {
          category = "light-bullet",
          cooldown_modifier = 0.1,
          target_type = "position",--"direction",
          clamp_position = true, -- new
          action =
          {
              {
                  type = "direct",
                  repeat_count = 1,
                  action_delivery =
                  {
                      {
                        type = "projectile",
                        projectile = "f-l-bullet",
                        starting_speed = 2,
                        direction_deviation = 0,
                        range_deviation = 0,
                        min_range = 0,
                        max_range = 10,
                        source_effects =
                        {
                            {
                                type = "create-explosion",
                                entity_name = "explosion-flashlight",
                            }
                        }
                      }
                  }
              }
          }
      }
  },

  -- Light entity --

  {
    type = "projectile",
    name = "f-l-bullet",
    flags = { "not-on-map" },
    collision_box = { { -4, -4 }, { 4, 4 } },
    acceleration = 0,
    piercing_damage = 0,
    hit_at_collision_position = true,
    force_condition = "enemy",
    light = { intensity = 0.06, size = 15, color = { r = 228, g = 248, b = 133, a = 1 } },
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
            entity_name = "explosion-hit-flash",
          },
          {
            type = "create-sticker", -- new
            sticker = "light-avoidance-sticker", -- new
          },
          {
            type = "create-sticker",
            sticker = "light-bullet-sticker",
            show_in_tooltip = false, -- old: true
          },
          {
            type = "push-back",
            distance = 0.5,
            show_in_tooltip = false, -- old: true
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
                type = "create-sticker", -- new
                sticker = "light-avoidance-sticker", -- new
              },
              {
                type = "create-sticker",
                sticker = "light-bullet-sticker",
                show_in_tooltip = false, -- old: true
              },
              {
                type = "push-back",
                distance = 0.5,
                show_in_tooltip = false, -- old: true
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

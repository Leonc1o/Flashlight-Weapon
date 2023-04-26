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


-- Main --
require("data/ammo_category");
require("data/ammo");
require("data/muzzle_animation");
require("data/muzzle");
require("data/projectile");
require("data/recipe");
require("data/sticker");
require("data/technology");
require("data/weapon");


-- Setings and Compatibility --

-- Character Mods --
if settings.startup["fw-vanilla-flashlight-settings"].value then
    data.raw["character"]["character"]["light"] = off
    if data.raw.character["GearGirl-skin"] then
        data.raw.character["GearGirl-skin"].light = off
    end
    if data.raw.character["Protogen-skin"] then
        data.raw.character["Protogen-skin"].light = off
    end
end

-- Flare Mods --
if settings.startup["fw-flare-settings"].value then
    data.raw.capsule["ln-flare-capsule"] = off
    if data.raw.recipe["ln-flare-capsule"] then
        data.raw.recipe["ln-flare-capsule"] = off
    end
end



--working old
-- if data.raw.capsule["ln-flare-capsule"] then
--     data.raw.capsule["ln-flare-capsule"] = off
--     if data.raw.recipe["ln-flare-capsule"] then
--         data.raw.recipe["ln-flare-capsule"] = off
--     end
-- end
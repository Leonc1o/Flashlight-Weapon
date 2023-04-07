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


local flashlightTechnology = {}

table.insert( data.raw["technology"]["battery"].effects, { type = "unlock-recipe", recipe = "fw-flash-light-recipe" })

table.insert( data.raw["technology"]["battery"].effects, { type = "unlock-recipe", recipe = "fw-flashlight-ammo-recipe", })

return flashlightTechnology


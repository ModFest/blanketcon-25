-- Wetworks
-- By hugeblank - March 22, 2022
-- Applies the 1.19 mud water bottle mechanic to concrete powder blocks
-- This file is marked as a dynamic entrypoint in the manifest.json.
-- Try modifying, and running /reload!

-- Import java classes
local System = require("java.lang.System")

local Registries = require("net.minecraft.registry.Registries")
local Registry = require("net.minecraft.registry.Registry")
local RegistryKey = require("net.minecraft.registry.RegistryKey")
local RegistryKeys = require("net.minecraft.registry.RegistryKeys")

local Identifier = require("net.minecraft.util.Identifier")

local BlockItem = require("net.minecraft.item.BlockItem")
local AbstractBlock = require("net.minecraft.block.AbstractBlock")
local AbstractBlockSettings = require("net.minecraft.block.AbstractBlock$Settings")
local Block = require("net.minecraft.block.Block")
local Item = require("net.minecraft.item.Item")
local ItemSettings = require("net.minecraft.item.Item$Settings")
local MapColor = require("net.minecraft.block.MapColor")

--print("------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------")
for key,value in pairs(ItemSettings()) do
    --print("found member " .. key);
end

--System.exit(1)

Registry.register(Registries.ITEM, Identifier.of("fancy_items_mod", "cherry_blossom_cake"), Item(ItemSettings()))
Registry.register(Registries.ITEM, Identifier.of("fancy_items_mod", "blossom_dust"), Item(ItemSettings()))

local cauldron = Block(AbstractBlockSettings.create():mapColor(MapColor.STONE_GRAY):requiresTool():strength(2.0):nonOpaque())
Registry.register(Registries.BLOCK, Identifier.of("fancy_items_mod", "cauldron"), cauldron)
Registry.register(Registries.ITEM, Identifier.of("fancy_items_mod", "cauldron"), BlockItem(cauldron, ItemSettings()))
--System.exit(0)

#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;

import mods.contenttweaker.AxisAlignedBB;

import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.potions.IPotion;

var liquid_difficulty = VanillaFactory.createFluid("difficulty_essence", color.fromHex("2D0A0A"));
liquid_difficulty.register();

var advanced_wreciever = VanillaFactory.createItem("advanced_wreciever");
advanced_wreciever.maxStackSize = 64;
advanced_wreciever.register();

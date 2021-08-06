#loader contenttweaker 


import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;

import mods.contenttweaker.AxisAlignedBB;

import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.potions.IPotion;

var difficultyessence = VanillaFactory.createFluid("difficultyessence", Color.fromHex("2d0a0a"));
difficultyessence.register();

var advancedwreciever = VanillaFactory.createItem("advancedwreciever");
advancedwreciever.maxStackSize = 64;
advancedwreciever.register();

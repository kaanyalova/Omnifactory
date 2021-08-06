// remove all /dank/null recipes
recipes.removeByMod("danknull");


//tier one redstone (??) (0)
recipes.addShaped("redstone_panel", <danknull:dank_null_panel_0:0>, [
	[<minecraft:redstone>, <minecraft:coal>, <minecraft:redstone>],
	[<minecraft:coal>,          null       ,   <minecraft:coal>],
	[<minecraft:redstone>, <minecraft:coal>, <minecraft:redstone>]]);

recipes.addShaped("redstone_danknull", <danknull:dank_null_0:0>, [
	[null, <danknull:dank_null_panel_0:0> , null],
	[<danknull:dank_null_panel_0>, null, <danknull:dank_null_panel_0:0>],
	[null, <danknull:dank_null_panel_0:0> , null ]]);

//tier two lapis (lv) (1)
recipes.addShaped("lapis_panel", <danknull:dank_null_panel_1:0>, [
	[<gregtech:meta_item_1:12216>, <gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12216>],
	[<gregtech:meta_item_1:12197>, null, <gregtech:meta_item_1:12197>],
	[<gregtech:meta_item_1:12216>, <gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12216>]]);

recipes.addShaped("lapis_danknull", <danknull:dank_null_1:0>, [
    [null, <danknull:dank_null_panel_1:0>,null ],
    [<danknull:dank_null_panel_1:0>, <danknull:dank_null_0:0>, <danknull:dank_null_panel_1:0>],
    [null, <ore:circuitBasic>, null]]);

//tier three iron (mv) (2)
recipes.addShaped("iron_panel", <danknull:dank_null_panel_2:0>, [
    [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12033>],
    [<gregtech:meta_item_1:12001>, null, <gregtech:meta_item_1:12001>],
    [<gregtech:meta_item_1:12033>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12033>]]);

recipes.addShaped("iron_danknull", <danknull:dank_null_2:0>, [
    [null, <danknull:dank_null_panel_2:0> , null],
    [<danknull:dank_null_panel_2:0>, <danknull:dank_null_1:0>, <danknull:dank_null_panel_2:0>],
    [null ,<ore:circuitGood>, null]]);

//tier four gold (hv) (3)
recipes.addShaped("gold_panel", <danknull:dank_null_panel_3:0>, [
    [<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12026>],
    [<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>],
    [<gregtech:meta_item_1:12026>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12026>]]);

recipes.addShaped("gold_danknull", <danknull:dank_null_3:0>, [
    [null, <danknull:dank_null_panel_3:0>, null],
    [<danknull:dank_null_panel_3:0> , <danknull:dank_null_2:0>, <danknull:dank_null_panel_3:0>],
    [null, <ore:circuitGood>, null]]);

//tier five diamond (ev) (4)
recipes.addShaped("diamond_panel" , <danknull:dank_null_panel_4:0>, [
    [<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12111>],
    [<gregtech:meta_item_1:12072>, null, <gregtech:meta_item_1:12072>],
    [<gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12111>]]);

recipes.addShaped("diamond_danknull" , <danknull:dank_null_4:0>, [
    [null, <danknull:dank_null_panel_4:0>, null],
    [<danknull:dank_null_panel_4:0>, <danknull:dank_null_3:0>, <danknull:dank_null_panel_4:0>],
    [null, <ore:circuitExtreme>, null]]);

//tier six emerald (iv) (5)
recipes.addShaped("emerald_panel", <danknull:dank_null_panel_5:0>, 
    [[<gregtech:meta_item_1:12113>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12113>],
    [<gregtech:meta_item_1:12235>, null, <gregtech:meta_item_1:12235>],
    [<gregtech:meta_item_1:12113>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12113>]]);

recipes.addShaped("emerald_danknull", <danknull:dank_null_5:0>, [
    [null, <danknull:dank_null_panel_5:0>, null],
    [<danknull:dank_null_panel_5:0>, <danknull:dank_null_4:0>, <danknull:dank_null_panel_5:0>],
    [null, <ore:circuitElite>, null]]);

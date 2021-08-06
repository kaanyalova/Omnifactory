import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import scripts.CommonVars.makeShaped as makeShaped;
import mods.tconstruct.Melting;
import mods.contenttweaker.Fluid;



//Buff bpa recipe so it gives used chlorine back
reactor.findRecipe(30, [null], [<liquid:phenol> * 2000, <liquid:acetone> * 1000, <liquid:hydrochloric_acid> * 1000]).remove();
reactor.recipeBuilder()
	.fluidInputs(<liquid:phenol> * 2000, <liquid:acetone> * 1000, <liquid:hydrochloric_acid> * 1000)
	.fluidOutputs(<liquid:bisphenol_a> * 1000, <liquid:diluted_hydrochloric_acid> * 2000)
	.EUt(30).duration(160).buildAndRegister();

//remove molten infinity ingot 
mods.tconstruct.Melting.removeRecipe(<liquid:infinity>);

//recipe for glitched heart 
mixer.recipeBuilder()
	.inputs([<enderio:item_material:56> * 1, <enderio:item_material:43> * 1, <enderio:item_material:41> * 1])
	.fluidInputs([<liquid:nutrient_distillation>* 1000])
	.fluidOutputs(<liquid:difficultyessence>*1000)
	.EUt(120).duration(100).buildAndRegister();

reactor.recipeBuilder()
	.inputs(<armorplus:material:3>*4)
	.fluidInputs([<liquid:difficultyessence>*250])
	.outputs(<deepmoblearning:glitch_heart>)
	.EUt(120).duration(100).buildAndRegister ();

//change tool forge recipe
//cannot use gregtech aluminium block texture for some reason 
recipes.remove(<tconstruct:toolforge:0>);
recipes.addShaped("toolforge", <tconstruct:toolforge:0>.withTag({textureBlock: {id: "chisel:blockaluminum", Count: 1 as byte, Damage: 0 as short}}), [
[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>],
[<gregtech:meta_block_compressed_0:1>, <tconstruct:tooltables:3>, <gregtech:meta_block_compressed_0:1>],
[<gregtech:meta_block_compressed_0:1>, null, <gregtech:meta_block_compressed_0:1>]]);


//recipes for rftools power storage

//remove all recipes
recipes.removeByMod("rftoolspower");

//tier one
recipes.addShaped("rfcell1", <rftoolspower:cell1:0>, [
[<gregtech:meta_item_1:32538>, <enderio:block_cap_bank:3>, <gregtech:meta_item_1:32538>],
[<thermalexpansion:capacitor:1>, <gregtech:meta_item_1:32671>, <thermalexpansion:capacitor:1>],
[<gregtech:meta_item_1:32538>, <thermalexpansion:capacitor:1> , <gregtech:meta_item_1:32538>]]);

//tier two
recipes.addShaped("rfcell2", <rftoolspower:cell2:0>, [
[<gregtech:meta_item_2:32213>, <rftoolspower:cell1:0>,<gregtech:meta_item_2:32213>],
[<thermalexpansion:capacitor:2>, <gregtech:meta_item_1:32672>, <thermalexpansion:capacitor:2>],
[<gregtech:meta_item_2:32213>, <thermalexpansion:capacitor:2>,<gregtech:meta_item_2:32213>]]);

//tier three
recipes.addShaped("rfcell3", <rftoolspower:cell3:0>, [
[<gregtech:meta_item_1:32597>, <rftoolspower:cell2:0>, <gregtech:meta_item_1:32597>],
[<thermalexpansion:capacitor:3>,<gregtech:meta_item_1:32673>,<thermalexpansion:capacitor:3>],
[<gregtech:meta_item_1:32597>, <thermalexpansion:capacitor:3>, <gregtech:meta_item_1:32597>]]);

//screen
recipes.addShaped("rfscreen", <rftoolspower:information_screen:0>, [
[null, null, null],
[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
[<minecraft:redstone>, <minecraft:iron_block>, <minecraft:redstone> ]]);

//make advanced filter recipe easier
recipes.remove(<enderio:item_advanced_item_filter:0>);
recipes.addShapeless("filterAdvanced", <enderio:item_advanced_item_filter:0>, 
[<enderio:item_basic_item_filter:0>, <ore:circuitBasic>]);

//make big item filter recipe easier
recipes.remove(<enderio:item_big_item_filter:0>);
recipes.addShapeless("filterBig", <enderio:item_big_item_filter:0>, 
[<enderio:item_basic_item_filter:0>, <gregtech:meta_item_1:32631>]);

//make big advanced filter recipe easier
recipes.remove(<enderio:item_big_advanced_item_filter:0>);
recipes.addShapeless("filterBigAdvanced" ,<enderio:item_big_advanced_item_filter:0>, 
[<ore:circuitBasic>, <enderio:item_basic_item_filter>, <gregtech:meta_item_1:32631>]);
recipes.addShapeless("filterBigAdvanced0", <enderio:item_big_advanced_item_filter:0>, 
[<enderio:item_big_item_filter>, <ore:circuitBasic>]);
recipes.addShapeless("filterBigAdvanced1", <enderio:item_big_advanced_item_filter:0>, 
[<enderio:item_advanced_item_filter:0>, <gregtech:meta_item_1:32631>]);

//make limited item filter recipe easier
recipes.addShapeless("filterLimited", <enderio:item_limited_item_filter:0>,
[<gregtech:meta_item_1:32651>, <enderio:item_advanced_item_filter:0>]);
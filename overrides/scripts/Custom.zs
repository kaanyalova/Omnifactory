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
reactor.recipeBuilder()
	.inputs(<armorplus:material:3>*4)
	.fluidInputs(<fluid:nutrient_distillation>*1000)
	.outputs(<deepmoblearning:glitch_heart>)
	.EUt(420).duration(200).buildAndRegister ();

//change tool forge recipe
//cannot use gregtech aluminium block texture for some reason 
recipes.remove(<tconstruct:toolforge>);
recipes.addRecipe("toolforge", <tconstruct:toolforge:0>.withTag({textureBlock: {id: "chisel:blockaluminum", Count: 1 as byte, Damage: 0 as short}}), [
[<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>],
[<gregtech:meta_block_compressed_0:1>, <tconstruct:tooltables:3>, <gregtech:meta_block_compressed_0:1>],
[<gregtech:meta_block_compressed_0:1>, null, <gregtech:meta_block_compressed_0:1>]]);



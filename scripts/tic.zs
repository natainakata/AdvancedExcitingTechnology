import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

print("------- Tinker's Construct Start -------");

recipes.remove(<tconstruct:smeltery_controller>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:smeltery_controller>, <tconstruct:seared:3>, <liquid:copper>, 576, true);

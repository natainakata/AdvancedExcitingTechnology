import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.ctintegration.util.RecipePattern;

import scripts.NataiLib;

print("------- Actually Additions Start -------");

// reconstructor and casing modify
NataiLib.replaceShaped(<actuallyadditions:block_atomic_reconstructor>, RecipePattern.init([
  "RCR",
  "BMC",
  "RCR"
  ]).map({
    R: redstone,
    C: copperWire,
    B: blackquartz,
    M: machineCase
  }).ingredients, null, null);

recipes.remove(crystalizedCase);
mods.actuallyadditions.AtomicReconstructor.addRecipe(crystalizedCase, machineCase, 2000);

print("------- Actually Additions End -------");

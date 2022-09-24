import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;
import mods.ctintegration.util.RecipePattern;

import scripts.NataiLib;

print("------- Extra Utilities 2 Start -------");

// harder resonator
val resoRedstone = <extrautils2:ingredients>;
NataiLib.replaceShaped(<extrautils2:resonator>, RecipePattern.init([
  "RCR",
  "S#S",
  "SSS"
  ]).map({
    R: redstone,
    C: coalBlock,
    '#': resoRedstone,
    S: steel
    }).ingredients, null, null);

// base Modify
recipes.removeByRecipeName("extrautils2:machine_base");
mods.extrautils2.Resonator.add(resonatedCase, machineCase, 200);

// harder suvival generator
recipes.removeByRecipeName("extrautils2:generator_survivalist");
mods.extrautils2.Resonator.add(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), 400);
// 
// val sawmillInput   = IMachineSlot.newItemStackSlot("sawmillInput");
// val sawmillOutput  = IMachineSlot.newItemStackSlot("sawmillOutput");
// val sawmillOutput2 = IMachineSlot.newItemStackSlot("sawmillOutput2");
// 
// IMachineRegistry.createNewMachine(
//   "sawmill",
//   10000,
//   80,
//   [ sawmillInput ],
//   [ sawmillOutput, sawmillOutput2 ],
// 
//   )

print("------- Extra Utilities 2 End -------");

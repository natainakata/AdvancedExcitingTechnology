import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import extrautilities2.Tweaker.IMachine;
import extrautilities2.Tweaker.IMachineRegistry;
import extrautilities2.Tweaker.IMachineSlot;

print("------- Extra Utilities 2 Start -------");

// harder resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>,
  [
    [ redstone, coalBlock, redstone ],
    [ steel, <extrautils2:ingredients>, steel ],
    [ steel, steel, steel ]
  ]
);

// base Modify
recipes.removeByRecipeName("extrautils2:machine_base");
mods.extrautils2.Resonator.add(<extrautils2:machine>, <teslacorelib:machine_case>, 200);

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

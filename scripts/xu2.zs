import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

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



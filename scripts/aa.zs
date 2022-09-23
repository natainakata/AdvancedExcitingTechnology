import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

print("------- Actually Additions Start -------");

// reconstructor and casing modify
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>,
  [
    [ redstone, copperWire, redstone ],
    [ <ore:gemQuartzBlack>, <teslacorelib:machine_case>, copperWire ],
    [ redstone, copperWire, redstone ]
  ]
);

recipes.remove(<actuallyadditions:block_misc:9>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:block_misc:9>, <teslacorelib:machine_case>, 2000);



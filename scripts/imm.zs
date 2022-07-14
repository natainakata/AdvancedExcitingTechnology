import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("------- Immersive Engineering Start -------");

recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.remove(<immersiveengineering:metal_device1>);

// hammer oredict
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>,
  [
    [null, iron, stringO],
    [null, woodStick, iron],
    [woodStick, null, null]
  ]
);


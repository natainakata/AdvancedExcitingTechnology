import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

print("------- Industrial Foregoing Start -------");

// harder case

recipes.remove(<teslacorelib:machine_case>);
recipes.addShaped(<teslacorelib:machine_case>,
  [
    [ steelPlate, steelPlate, steelPlate ],
    [ steelPlate, <ore:blockRedstone>, steelPlate ],
    [ steelPlate, steelPlate, steelPlate ]
  ]
);



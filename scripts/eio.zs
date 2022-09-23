import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

print("------- EnderIO Start -------");

recipes.removeByRecipeName("enderio:simple_chassis");
recipes.addShaped(<enderio:item_material>,
  [
    [ steelStick, steelPlate, steelStick ],
    [ steelPlate, <enderio:item_material:20>, steelPlate ],
    [ steelStick, steelPlate, steelStick ]
  ]
);

// recipes.addShaped(<enderio:item_yeta_wrench>)

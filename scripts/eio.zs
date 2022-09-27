import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.NataiLib;

print("------- EnderIO Start -------");

recipes.removeByRecipeName("enderio:simple_chassis");
recipes.addShaped(<enderio:item_material>,
  [
    [ steelStick, steelPlate, steelStick ],
    [ steelPlate, <enderio:item_material:20>, steelPlate ],
    [ steelStick, steelPlate, steelStick ]
  ]
);

NataiLib.replaceShaped(<enderio:item_yeta_wrench>, 
  [
    [iron, null, iron],
    [null, stoneGear, null],
    [null, iron, null]
  ], null, null
);

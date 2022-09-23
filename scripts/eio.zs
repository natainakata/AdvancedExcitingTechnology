import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.ctintegration.util.RecipePattern;

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

// recipes.addShaped(<enderio:item_yeta_wrench>)

NataiLib.replaceShaped(<enderio:item_yeta_wrench>, RecipePattern.init([
  "I I",
  " G ",
  " I "
]).map({
  'I': iron,
  'G': stoneGear
}).ingredients, null, null);


print("------- EnderIO End -------");

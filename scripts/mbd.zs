import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.NataiLib;

print("------- MultiBlockd Start -------");

recipes.addShaped(<aet:sawmill>,
  [
    [steel, steel, steel],
    [copperWire, <ore:gearAlloy>, copperWire],
    [steel, steel, steel]
  ]
);

print("------- MultiBlockd End -------");

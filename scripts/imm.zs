import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

print("------- Immersive Engineering Start -------");

recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.remove(<immersiveengineering:stone_decoration:2>);
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.remove(<immersiveengineering:metal_device1>);
mods.jei.JEI.hideCategory("ie.blastfurnace");
mods.jei.JEI.hideCategory("ie.alloysmelter");

// hammer oredict
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>,
  [
    [null, iron, stringO],
    [null, woodStick, iron],
    [woodStick, null, null]
  ]
);

// electrum and constantan
recipes.removeByRecipeName("immersiveengineering:material/dust_electrum");
recipes.removeByRecipeName("immersiveengineering:material/dust_constantan");
recipes.addShaped(<contenttweaker:dustblock_electrum>, 
  [
    [<ore:dustElectrum>, <ore:dustElectrum>, <ore:dustElectrum>],
    [<ore:dustElectrum>, <ore:dustElectrum>, <ore:dustElectrum>],
    [<ore:dustElectrum>, <ore:dustElectrum>, <ore:dustElectrum>]
  ]
);
recipes.addShaped(<contenttweaker:dustblock_constantan>, 
  [
    [<ore:dustConstantan>, <ore:dustConstantan>, <ore:dustConstantan>],
    [<ore:dustConstantan>, <ore:dustConstantan>, <ore:dustConstantan>],
    [<ore:dustConstantan>, <ore:dustConstantan>, <ore:dustConstantan>]
  ]
);
recipes.addShapeless(<immersiveengineering:metal:16> * 9, [<contenttweaker:dustblock_electrum>]);
recipes.addShapeless(<immersiveengineering:metal:15> * 9, [<contenttweaker:dustblock_constantan>]);

mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:spindle_bronze>, bronze * 4, <immersiveengineering:mold:1>, 2000);


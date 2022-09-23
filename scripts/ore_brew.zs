import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.Squeezer as squeezer;
import mods.immersiveengineering.Mixer as mixer;

print("------- Ore Brewing Processing Start -------");

val oreMat as IOreDictEntry[ILiquidStack[]] = {
  [ironJuice, ironWine, ironMolten]             : ironOre,
  [copperJuice, copperWine, copperMolten]       : copperOre,
  [tinJuice, tinWine, tinMolten]                : tinOre,
  [zincJuice, zincWine, zincMolten]             : zincOre,
  [magnetiteJuice, magnetiteWine, ironMolten]   : magnetiteOre,
  [goldJuice, goldWine, goldMolten]             : goldOre,
  [aluminumJuice, aluminumWine, aluminumMolten] : aluminumOre,
  [nickelJuice, nickelWine, nickelMolten]       : nickelOre,
  [leadJuice, leadWine, leadMolten]             : leadOre,
  [silverJuice, silverWine, silverMolten]       : silverOre
};

for liquid, dict in oreMat {
  squeezer.addRecipe(null, liquid[0] * 1000, dict, 2048);
  mixer.addRecipe(liquid[2] * 144, liquid[1] * 144, [<ore:dcsDrop>], 2048);
}

print("------- Ore Brewing Processing End -------");

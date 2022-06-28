import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("------- Botania Start -------");

// petal oredict

val petaldef = <botania:petal>.definition;
val petaldict = <ore:magicPetal>;

for i in 0 to 15 {
  petaldict.add(petaldef.makeStack(i));
}

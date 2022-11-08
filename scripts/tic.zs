import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import modtweaker.tconstruct.ITICMaterial;

print("------- Tinker's Construct Start -------");

recipes.remove(<tconstruct:smeltery_controller>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:smeltery_controller>, <tconstruct:seared:3>, <liquid:copper>, 576, true);

// balanced material

val nickelsilverPart = <ticmat:nickelsilver>;
nickelsilverPart.attackHead = 3;
nickelsilverPart.durabilityHandle = 90;
nickelsilverPart.durabilityExtra = 100;

val stainlessPart = <ticmat:stainless_steel>;
stainlessPart.durabilityHead = 720;
stainlessPart.attackHead = 7;
stainlessPart.durabilityExtra = 180;
stainlessPart.durabilityHandle = 180;
stainlessPart.modifierHandle = 1.6;
stainlessPart.durabilityExtra = 120;

val titaniumPart = <ticmat:titanium_alloy>;
titaniumPart.attackHead = 14;

val toolsteelPart = <ticmat:tool_steel>;
toolsteelPart.attackHead = 9;
toolsteelPart.durabilityHandle = 130;
toolsteelPart.durabilityExtra = 100;

val mangalloyPart = <ticmat:mangalloy>;
mangalloyPart.durabilityHead = 400;
mangalloyPart.attackHead = 6;
mangalloyPart.durabilityHandle = 80;
mangalloyPart.durabilityExtra = 100;

val magnetPart = <ticmat:magnet>;
magnetPart.durabilityHead = 250;

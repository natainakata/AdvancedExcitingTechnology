import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("--------- Underground Biomes Start ---------");

recipes.addShapeless(<minecraft:cobblestone>, [<undergroundbiomes:igneous_cobble:*>]);
recipes.addShapeless(<minecraft:cobblestone>, [<undergroundbiomes:metamorphic_cobble:*>]);
recipes.addShapeless(<minecraft:mossy_cobblestone>, [<undergroundbiomes:metamorphic_cobble_mossy:*>]);
recipes.addShapeless(<minecraft:mossy_cobblestone>, [<undergroundbiomes:igneous_cobble_mossy:*>]);
recipes.addShapeless(<minecraft:stone>, [<undergroundbiomes:igneous_stone:*>]);
recipes.addShapeless(<minecraft:stone>, [<undergroundbiomes:metamorphic_stone:*>]);
recipes.addShapeless(<minecraft:stone_slab:3>, [<undergroundbiomes:igneous_cobble_halfslab:*>]);
recipes.addShapeless(<minecraft:stone_slab:3>, [<undergroundbiomes:metamorphic_cobble_halfslab:*>]);
recipes.addShapeless(<minecraft:stone_slab>, [<undergroundbiomes:igneous_stone_halfslab:*>]);
recipes.addShapeless(<minecraft:stone_slab>, [<undergroundbiomes:metamorphic_stone_halfslab:*>]);

mods.botania.PureDaisy.addRecipe(<ore:stone>, <botania:livingrock>);

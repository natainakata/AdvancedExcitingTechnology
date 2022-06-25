import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("------- HeatAndClimate Start -------");

// repeir ore dict
recipes.remove(<dcs_climate:dcs_repair>);
recipes.addShapeless(<dcs_climate:dcs_repair>, [<ore:slimeball>, <ore:dustIron>]);

// recipes conflict
recipes.remove(<dcs_climate:dcs_device_lowchest_wood>);
recipes.remove(<dcs_climate:dcs_wallshelf_wood>);
recipes.addShaped(<dcs_climate:dcs_device_lowchest_wood>,
  [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [null, <ore:chest>, null],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
  ]
);
recipes.addShaped(<dcs_climate:dcs_wallshelf_wood>,
  [
    [<ore:slabWood>, null, <ore:slabWood>],
    [<ore:slabWood>, <ore:chest>, <ore:slabWood>],
    [<ore:slabWood>, null, <ore:slabWood>]
  ]
);

// remove blaze skip
recipes.removeByRecipeName("dcs_climate:main/dcs_blaze_rod_0");

// bronze to brass
val bronzegear = <ore:gearBronze>;
val bronze = <ore:ingotBronze>;
val shaft = <dcs_climate:dcs_device_shaft_s>;
recipes.removeByRecipeName("dcs_climate:main/dcs_spindle_1_2");

recipes.removeByRecipeName("dcs_climate:machine/dcs_wrench_0_2");
recipes.addShaped(<dcs_climate:dcs_wrench>,
  [
    [bronze, null, bronze],
    [null, bronzegear, null],
    [null, bronze, null]
    ]
);

recipes.removeByRecipeName("dcs_climate:machine/dcs_device_shaft_s_0_2");
recipes.addShaped(shaft * 8,
  [
    [null, bronze, null],
    [null, bronzegear, null],
    [null, bronze, null]
  ]
);

recipes.addShaped(<dcs_climate:dcs_device_shaft_l>,
  [
    [null, shaft],
    [shaft, bronzegear]
  ]
);
recipes.addShaped(<dcs_climate:dcs_device_shaft_ta>,
  [
    [null, shaft, null],
    [shaft, bronzegear, null],
    [null, shaft, null]
  ]
);
recipes.addShaped(<dcs_climate:dcs_device_shaft_tb>,
  [
    [null, null, null],
    [null, shaft, null],
    [shaft, bronzegear, shaft]
  ]
);
recipes.addShaped(<dcs_climate:dcs_device_shaft_x>,
  [
    [null, shaft, null],
    [shaft, bronzegear, shaft],
    [null, shaft, null]
  ]
);

recipes.addShaped(<dcs_climate:dcs_device_windmill>,
  [
    [null, <ore:plankWood>, null],
    [<ore:plankWood>, bronzegear, <ore:plankWood>],
    [null, <ore:plankWood>, null]
  ]
);

// harder chambers
val redstone = <minecraft:redstone>;
val copperwire = <immersiveengineering:wirecoil>;
recipes.remove(<dcs_climate:dcs_device_chamber>);
recipes.addShaped(<dcs_climate:dcs_device_chamber>,
  [
    [redstone, copperwire, redstone],
    [copperwire, <minecraft:furnace>, copperwire],
    [redstone, copperwire, redstone]
  ]
);

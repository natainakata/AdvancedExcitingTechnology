import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("------- Heat And Climate Start -------");

// repeir ore dict
recipes.remove(<dcs_climate:dcs_repair>);
recipes.addShapeless(<dcs_climate:dcs_repair>, [<ore:slimeball>, <ore:dustIron>]);

// recipes conflict
recipes.remove(<dcs_climate:dcs_device_lowchest_wood>);
recipes.remove(<dcs_climate:dcs_wallshelf_wood>);
recipes.addShaped(<dcs_climate:dcs_device_lowchest_wood>,
  [
    [woodSlab, woodSlab, woodSlab],
    [null, <ore:chest>, null],
    [woodSlab, woodSlab, woodSlab]
  ]
);
recipes.addShaped(<dcs_climate:dcs_wallshelf_wood>,
  [
    [woodSlab, null, woodSlab],
    [woodSlab, <ore:chest>, woodSlab],
    [woodSlab, null, woodSlab]
  ]
);

// remove blaze skip
recipes.removeByRecipeName("dcs_climate:main/dcs_blaze_rod_0");

// bronze to brass
val shaft = <dcs_climate:dcs_device_shaft_s>;
recipes.removeByRecipeName("dcs_climate:main/dcs_spindle_1_2");

recipes.removeByRecipeName("dcs_climate:machine/dcs_wrench_0_2");
recipes.addShaped(<dcs_climate:dcs_wrench>,
  [
    [bronze, null, bronze],
    [null, bronzeGear, null],
    [null, bronze, null]
    ]
);

recipes.removeByRecipeName("dcs_climate:machine/dcs_device_shaft_s_0_2");
recipes.addShaped(shaft * 8,
  [
    [null, bronze, null],
    [null, bronzeGear, null],
    [null, bronze, null]
  ]
);

recipes.addShaped(<dcs_climate:dcs_device_shaft_l>,
  [
    [null, shaft],
    [shaft, bronzeGear]
  ]
);
recipes.addShaped(<dcs_climate:dcs_device_shaft_ta>,
  [
    [null, shaft, null],
    [shaft, bronzeGear, null],
    [null, shaft, null]
  ]
);
recipes.addShaped(<dcs_climate:dcs_device_shaft_tb>,
  [
    [null, null, null],
    [null, shaft, null],
    [shaft, bronzeGear, shaft]
  ]
);
recipes.addShaped(<dcs_climate:dcs_device_shaft_x>,
  [
    [null, shaft, null],
    [shaft, bronzeGear, shaft],
    [null, shaft, null]
  ]
);

recipes.addShaped(<dcs_climate:dcs_device_windmill>,
  [
    [null, wood, null],
    [wood, bronzeGear, wood],
    [null, wood, null]
  ]
);

recipes.addShaped(<dcs_climate:dcs_device_spinning_machine>,
  [
    [woodGear, woodGear, woodGear],
    [wood, bronzeGear, wood],
    [iron, iron, iron]
  ]
);


// harder chambers
recipes.remove(<dcs_climate:dcs_device_chamber>);
recipes.addShaped(<dcs_climate:dcs_device_chamber>,
  [
    [ironPlate, copperWire, ironPlate],
    [copperWire, <minecraft:furnace>, copperWire],
    [ironPlate, copperWire, ironPlate]
  ]
);

// harder conveyor
recipes.remove(<dcs_climate:dcs_device_conveyor>);
recipes.addShaped(<dcs_climate:dcs_device_conveyor> * 8,
  [
    [ null, null, null ],
    [ steelPlate, steelGear, steelPlate ],
    [ null, null, null ]
  ]
);

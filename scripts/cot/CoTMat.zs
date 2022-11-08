#loader contenttweaker
#priority 150

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import scripts.cot.CoTLib;


// Dust Block
val dustBlocks = {
  electrum   : 0x967C57,
  constantan : 0x965758,
} as int[string];

for id, color in dustBlocks {
  CoTLib.addBlockColored("dustblock_" + id, <blockmaterial:rock>, 1.5F, 15.0F, "shovel", 0, <soundtype:stone>, color);
}

// ore fluid
val oreFluid = {
  iron      : [0x9A9A9A, 0x666666],
  copper    : [0xC06B58, 0x80473A],
  tin       : [0xE6E2E8, 0x99969A],
  zinc      : [0x66645E, 0x44423E],
  magnetite : [0x292828, 0x1B1A1A],
  gold      : [0xD9D64B, 0x908E32],
  aluminum  : [0xE3CFDB, 0x978A92],
  nickel    : [0xF5E697, 0xA39964],
  lead      : [0x584AA3, 0x3A316C],
  silver    : [0x9CD1CA, 0x688B86]
} as int[][string];

for id, color in oreFluid {
  CoTLib.addFluid("juice_" + id, color[0]);
  CoTLib.addFluid("wine_" + id, color[1]);
}

// metal variants
val alloys = {
  Coldsteel : 0x6E87B5,
  Heatsteel : 0xC94736
} as int[string];

val partNames = ["dust", "gear", "plate", "nugget", "ingot"] as string[];
for id, color in alloys {
  val mat = CoTLib.addMaterial(id, color, false);
  mat.registerParts(partNames);
  val blockData = mat.registerPart("block").getData();
  blockData.addDataValue("hardness", "5");
  blockData.addDataValue("resistance", "30");
  blockData.addDataValue("harvestTool", "pickaxe");
  blockData.addDataValue("harvestLevel", "1");
}

val nothingsmat = {
  bronze : 0xA35F16
} as int[string];

for id, color in nothingsmat {
  CoTLib.addItemColored("spindle_" + id, color, "dcs_climate:items/misc/spindle_toolsteel");
}

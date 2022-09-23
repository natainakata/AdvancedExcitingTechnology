#loader contenttweaker
#priority 150

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import scripts.cot.CoTLib;

print("--------- CoT Material Start ---------");

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
  iron      : [0x666666, 0x9A9A9A],
  copper    : [0x80473A, 0xC06B58],
  tin       : [0x99969A, 0xE6E2E8],
  zinc      : [0x44423E, 0x66645E],
  magnetite : [0x1B1A1A, 0x292828],
  gold      : [0x908E32, 0xD9D64B],
  aluminum  : [0x978A92, 0xE3CFDB],
  nickel    : [0xA39964, 0xF5E697],
  lead      : [0x3A316C, 0x584AA3],
  silver    : [0x688B86, 0x9CD1CA]
} as int[][string];

for id, color in oreFluid {
  CoTLib.addFluid("juice_" + id, color[0]);
  CoTLib.addFluid("wine_" + id, color[1]);
}

print("--------- CoT Material End ---------");

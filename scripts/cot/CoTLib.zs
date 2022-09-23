#loader contenttweaker
#priority 999

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;
import mods.contenttweaker.IBlockColorSupplier;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

import crafttweaker.world.IBlockAccess;

function addBlock(id as string, material as BlockMaterial, hardness as float, resistance as float, toolClass as string, toolLevel as int, soundType as SoundType) {
  var block = VanillaFactory.createBlock(id, material);
  block.setBlockHardness(hardness);
  block.setBlockResistance(resistance);
  block.setToolClass(toolClass);
  block.setToolLevel(toolLevel);
  block.setBlockSoundType(soundType);
  block.register();
}

function addBlockColored(id as string, material as BlockMaterial, hardness as float, resistance as float, toolClass as string, toolLevel as int, soundType as SoundType, color as int) {
  var block = VanillaFactory.createBlock(id, material);
  block.setBlockHardness(hardness);
  block.setBlockResistance(resistance);
  block.setToolClass(toolClass);
  block.setToolLevel(toolLevel);
  block.setBlockSoundType(soundType);
  block.blockColorSupplier = function (state as BlockState, access as IBlockAccess, pos as BlockPos, tintIndex as int) as Color {
    return Color.fromInt(color);
  };
  block.itemColorSupplier = function (item, tintIndex) {
    return Color.fromInt(color);
  };
    block.register();
}

function addFluid(id as string, color as int) {
  VanillaFactory.createFluid(id, Color.fromInt(color)).register();
}

function addItem(id as string) {
  VanillaFactory.createItem(id).register();
}


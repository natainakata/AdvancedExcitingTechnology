#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// material

global wood        as IOreDictEntry = <ore:plankWood>;
global woodLog     as IOreDictEntry = <ore:logWood>;
global woodStick   as IIngredient   = <ore:stickWood> | <ore:stickTreatedWood>;
global woodGear    as IOreDictEntry = <ore:gearWood>;
global woodSlab    as IOreDictEntry = <ore:slabWood>;

global stringO     as IOreDictEntry = <ore:string>;

global coalBlock   as IOreDictEntry = <ore:blockCoal>;

global iron        as IItemStack    = <minecraft:iron_ingot>;
global ironPlate   as IOreDictEntry = <ore:plateIron>;

global copper      as IOreDictEntry = <ore:ingotCopper>;
global copperPlate as IOreDictEntry = <ore:plateCopper>;
global copperWire  as IItemStack    = <immersiveengineering:wirecoil>;

global bronze      as IOreDictEntry = <ore:ingotBronze>;
global bronzeGear  as IOreDictEntry = <ore:gearBronze>;

global redstone    as IItemStack    = <minecraft:redstone>;

global steel       as IOreDictEntry = <ore:ingotSteel>;
global steelPlate  as IOreDictEntry = <ore:plateSteel>;
global steelGear   as IOreDictEntry = <ore:gearSteel>;

// petal oredict
val petaldef  = <botania:petal>.definition;
val petaldict = <ore:magicPetal>;

for i in 0 to 15 {
  petaldict.add(petaldef.makeStack(i));
}

// color oredict
val dcsDropDict    = <ore:dcsDrop>;
val dcsExtractDict = <ore:dcsExtract>;
val dcsDropDef     = <dcs_climate:dcs_color>.definition;

for i in 0 to 4 {
  dcsDropDict.add(dcsDropDef.makeStack(i));
}

for i in 5 to 9 {
  dcsExtractDict.add(dcsDropDef.makeStack(i));
}

// spell oredict
val dcsSpellDict         = <ore:dcsSpell>;
val dcsAdvancedSpellDict = <ore:dcsSpellAdvanced>;
val dcsMasterSpellDict   = <ore:dcsSpellMaster>;
val dcsSpellDef          = <dcs_climate:dcs_magic_card>.definition;

for i in 0 to 4 {
  dcsSpellDict.add(dcsSpellDef.makeStack(i));
}

for i in 5 to 9 {
  dcsAdvancedSpellDict.add(dcsSpellDef.makeStack(i));
}

for i in 10 to 14 {
  dcsMasterSpellDict.add(dcsSpellDef.makeStack(i));
}


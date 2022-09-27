#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

// material

global wood               as IOreDictEntry = <ore:plankWood>;
global woodLog            as IOreDictEntry = <ore:logWood>;
global woodStick          as IIngredient   = <ore:stickWood> | <ore:stickTreatedWood>;
global woodGear           as IOreDictEntry = <ore:gearWood>;
global woodSlab           as IOreDictEntry = <ore:slabWood>;

global stone              as IOreDictEntry = <ore:stone>;
global stoneGear          as IOreDictEntry = <ore:gearStone>;

global stringO            as IOreDictEntry = <ore:string>;

global coalBlock          as IOreDictEntry = <ore:blockCoal>;

global iron               as IOreDictEntry = <ore:ingotIron>;
global ironOre            as IOreDictEntry = <ore:oreIron>;
global ironJuice          as ILiquidStack  = <liquid:juice_iron>;
global ironWine           as ILiquidStack  = <liquid:wine_iron>;
global ironMolten         as ILiquidStack  = <liquid:iron>;
global ironPlate          as IOreDictEntry = <ore:plateIron>;

global copper             as IOreDictEntry = <ore:ingotCopper>;
global copperOre          as IOreDictEntry = <ore:oreCopper>;
global copperJuice        as ILiquidStack  = <liquid:juice_copper>;
global copperWine         as ILiquidStack  = <liquid:wine_copper>;
global copperMolten       as ILiquidStack  = <liquid:copper>;
global copperPlate        as IOreDictEntry = <ore:plateCopper>;
global copperWire         as IItemStack    = <immersiveengineering:wirecoil>;

global tin                as IOreDictEntry = <ore:ingotTin>;
global tinJuice           as ILiquidStack  = <liquid:juice_tin>;
global tinWine            as ILiquidStack  = <liquid:wine_tin>;
global tinMolten          as ILiquidStack  = <liquid:tin>;
global tinOre             as IOreDictEntry = <ore:oreTin>;

global zinc               as IOreDictEntry = <ore:ingotZinc>;
global zincOre            as IOreDictEntry = <ore:oreZinc>;
global zincJuice          as ILiquidStack  = <liquid:juice_zinc>;
global zincMolten         as ILiquidStack  = <liquid:zinc>;
global zincWine           as ILiquidStack  = <liquid:wine_zinc>;

global magnetiteOre       as IOreDictEntry = <ore:oreMagnetite>;
global magnetiteJuice     as ILiquidStack  = <liquid:juice_magnetite>;
global magnetiteWine      as ILiquidStack  = <liquid:wine_magnetite>;

global gold               as IOreDictEntry = <ore:ingotGold>;
global goldOre            as IOreDictEntry = <ore:oreGold>;
global goldJuice          as ILiquidStack  = <liquid:juice_gold>;
global goldWine           as ILiquidStack  = <liquid:wine_gold>;
global goldMolten         as ILiquidStack  = <liquid:gold>;

global aluminum           as IOreDictEntry = <ore:ingotAluminum>;
global aluminumOre        as IOreDictEntry = <ore:oreAluminum>;
global aluminumJuice      as ILiquidStack  = <liquid:juice_aluminum>;
global aluminumWine       as ILiquidStack  = <liquid:wine_aluminum>;
global aluminumMolten     as ILiquidStack  = <liquid:aluminum>;

global nickel             as IOreDictEntry = <ore:ingotNickel>;
global nickelOre          as IOreDictEntry = <ore:oreNickel>;
global nickelJuice        as ILiquidStack  = <liquid:juice_nickel>;
global nickelWine         as ILiquidStack  = <liquid:wine_nickel>;
global nickelMolten       as ILiquidStack  = <liquid:nickel>;

global lead               as IOreDictEntry = <ore:ingotLead>;
global leadOre            as IOreDictEntry = <ore:oreLead>;
global leadJuice          as ILiquidStack  = <liquid:juice_lead>;
global leadWine           as ILiquidStack  = <liquid:wine_lead>;
global leadMolten         as ILiquidStack  = <liquid:lead>;

global silver             as IOreDictEntry = <ore:ingotSilver>;
global silverOre          as IOreDictEntry = <ore:oreSilver>;
global silverJuice        as ILiquidStack  = <liquid:juice_silver>;
global silverWine         as ILiquidStack  = <liquid:wine_silver>;
global silverMolten       as ILiquidStack  = <liquid:silver>;

global bronze             as IOreDictEntry = <ore:ingotBronze>;
global bronzeGear         as IOreDictEntry = <ore:gearBronze>;

global redstone           as IItemStack    = <minecraft:redstone>;

global steel              as IOreDictEntry = <ore:ingotSteel>;
global steelPlate         as IOreDictEntry = <ore:plateSteel>;
global steelGear          as IOreDictEntry = <ore:gearSteel>;
global steelStick         as IOreDictEntry = <ore:stickSteel>;

global crystalDust        as IOreDictEntry = <ore:dustCrystal>;

global redDrop            as IOreDictEntry = <ore:dropRed>;
global blueDrop           as IOreDictEntry = <ore:dropBlue>;
global greenDrop          as IOreDictEntry = <ore:dropGreen>;
global whiteDrop          as IOreDictEntry = <ore:dropWhite>;
global blackDrop          as IOreDictEntry = <ore:dropBlack>;
global redExtract         as IOreDictEntry = <ore:extractRed>;
global blueExtract        as IOreDictEntry = <ore:extractBlue>;
global greenExtract       as IOreDictEntry = <ore:extractGreen>;
global whiteExtract       as IOreDictEntry = <ore:extractWhite>;
global blackExtract       as IOreDictEntry = <ore:extractBlack>;


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

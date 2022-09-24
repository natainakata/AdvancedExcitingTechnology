import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI as jei;
import mods.ctintegration.util.RecipePattern;

import scripts.NataiLib;

print("------- Heat And Climate Start -------");

// repeir ore dict
NataiLib.replaceShapeless(<dcs_climate:dcs_repair>, [slimeball, ironDust], null, null);

// recipes conflict
NataiLib.replaceShaped(<dcs_climate:dcs_device_lowchest_wood>, RecipePattern.init([
  "WWW",
  " C ",
  "WWW"
  ]).map({
    W: woodSlab,
    C: chest
  }).ingredients, null, null);
NataiLib.replaceShaped(<dcs_climate:dcs_wallshelf_wood>, RecipePattern.init([
  "W W",
  "WCW",
  "W W"
  ]).map({
    W: woodSlab,
    C: chest
  }).ingredients, null, null);

// remove blaze skip
recipes.removeByRecipeName("dcs_climate:main/dcs_blaze_rod_0");

// bronze to brass
val shaft = <dcs_climate:dcs_device_shaft_s>;
recipes.removeByRecipeName("dcs_climate:main/dcs_spindle_1_2");

recipes.removeByRecipeName("dcs_climate:machine/dcs_wrench_0_2");
recipes.addShaped(<dcs_climate:dcs_wrench>, RecipePattern.init([
  "B B",
  " G ",
  " B "
  ]).map({
    B: bronze,
    G: bronzeGear
  }).ingredients, null, null);

recipes.removeByRecipeName("dcs_climate:machine/dcs_device_shaft_s_0_2");
recipes.addShaped(shaft * 8, RecipePattern.init([
  " B ",
  " G ",
  " B "
  ]).map({
    B: bronze,
    G: bronzeGear
  }).ingredients, null, null);

recipes.addShaped(<dcs_climate:dcs_device_shaft_l>, RecipePattern.init([
  " S",
  "SG"
  ]).map({
    S: shaft,
    G: bronzeGear
  }).ingredients, null, null);
recipes.addShaped(<dcs_climate:dcs_device_shaft_ta>, RecipePattern.init([
  " S ",
  "SG ",
  " S "
  ]).map({
    S: shaft,
    G: bronzeGear
  }).ingredients, null, null);
recipes.addShaped(<dcs_climate:dcs_device_shaft_tb>, RecipePattern.init([
  "   ",
  " S ",
  "SGS"
  ]).map({
    S: shaft,
    G: bronzeGear
  }).ingredients, null, null);
recipes.addShaped(<dcs_climate:dcs_device_shaft_x>, RecipePattern.init([
  " S ",
  "SGS",
  " G "
  ]).map({
    S: shaft,
    G: bronzeGear
  }).ingredients, null, null);

recipes.addShaped(<dcs_climate:dcs_device_windmill>, RecipePattern.init([
  " W ",
  "WGW",
  " W "
  ]).map({
    W: wood,
    G: bronzeGear
  }).ingredients, null, null);

recipes.addShaped(<dcs_climate:dcs_device_spinning_machine>, RecipePattern.init([
  "SSS",
  "WGW",
  "III"
  ]).map({
    S: woodGear,
    W: wood,
    G: bronzeGear,
    I: iron
  }).ingredients, null, null);


// harder chambers
NataiLib.replaceShapeless(<dcs_climate:dcs_device_chamber>, RecipePattern.init([
  "ICI",
  "CFC",
  "ICI"
  ]).map({
    I: ironPlate,
    C: copperWire,
    F: <minecraft:furnace>
  }).ingredients, null, null);

// harder conveyor
NataiLib.replaceShapeless(<dcs_climate:dcs_device_conveyor>, RecipePattern.init([
  "   ",
  "SGS",
  "   "
  ]).map({
    S: steelPlate,
    G: steelGear
  }).ingredients, null, null);

// fix blue gold ring
jei.removeAndHide(<dcs_climate:dcs_color_ring2:0>);
recipes.addShaped(<contenttweaker:dcs_color_ring2>, RecipePattern.init([
  " C ",
  " B ",
  " G "
  ]).map({
    C: crystalDust,
    B: blueDrop,
    G: gold
  }).ingredients, null, null);
  

print("------- Heat And Climate Start -------");

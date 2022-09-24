#priority 999

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.IRecipeAction;
import crafttweaker.recipes.IRecipeFunction;

print("------- Natai Lib Start -------");

function replaceShaped(output as IItemStack, input as IIngredient[][], recipeFunction as IRecipeFunction, recipeAction as IRecipeAction) { 
  recipes.remove(output);
  recipes.addShaped(output, input, recipeFunction, recipeAction);
}
function replaceShapeless(output as IItemStack, input as IIngredient[], recipeFunction as IRecipeFunction, recipeAction as IRecipeAction) { 
  recipes.remove(output);
  recipes.addShapeless(output, input, recipeFunction, recipeAction);
}

print("------- Natai Lib End -------");

#loader contenttweaker
#priority 150

import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.ctintegration.baubles.IBaubleInventory;

import scripts.cot.CoTLib;

var ringGoldBlue = VanillaFactory.createBaubleItem("dcs_color_ring2");
ringGoldBlue.onWornTick = function(bauble, wearer) {
	if(wearer instanceof IPlayer) {
	  var player as IPlayer = wearer;
		var world as IWorld = player.world;
		if (world.getWorldTime() % 20 == 0) {
			player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(220, 0));
		}
	}
};
ringGoldBlue.baubleType = "RING";
ringGoldBlue.register();

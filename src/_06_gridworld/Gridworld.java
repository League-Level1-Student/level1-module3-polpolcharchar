package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
	public static void main(String[] args) {
		World w = new World();
		w.show();
		Bug b = new Bug(Color.BLUE);
		Flower f = new Flower();
		b.turn();
		b.turn();
		Location l3 = new Location(1, 0);
		Location l4 = new Location(1, 2);
		w.add(l3, f);
		w.add(l4, f);
		Location l1 = new Location(1, 1);
		w.add(l1, b);
		Random r = new Random();
		Location l2 = new Location(r.nextInt(5), r.nextInt(5));
		w.add(l2, b);
		for (int i = 0; i < 10; i++) {
			for (int y = 0; y < 10; y++) {
				Location l = new Location(i, y);
				w.add(l, f);
				
			}
		}
	}
}

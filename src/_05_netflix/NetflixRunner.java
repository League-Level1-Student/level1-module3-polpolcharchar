package _05_netflix;

public class NetflixRunner {
	public static void main(String[] args) {
		Movie m1 = new Movie("Batman", 1);
		Movie m2 = new Movie("Superman", 2);
		Movie m3 = new Movie("Captain America", 3);
		Movie m4 = new Movie("Joker", 4);
		Movie m5 = new Movie("Wonderwoman", 5);
		System.out.println(m1.getTicketPrice());

		NetflixQueue n = new NetflixQueue();

		n.addMovie(m1);
		n.addMovie(m4);
		n.addMovie(m3);
		n.addMovie(m2);
		n.addMovie(m5);
		n.printMovies();
		n.sortMoviesByRating();
		System.out.println("The best movie is " + n.getBestMovie());
		System.out.println("The second best movie is " + n.movies.get(1));

	}
}

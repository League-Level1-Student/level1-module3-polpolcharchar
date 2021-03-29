package _01_intro_to_static;

public class Athlete {
    static int nextBibNumber = 1;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber = 1;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
        this.bibNumber = nextBibNumber;
        nextBibNumber++;
    }

    public static void main(String[] args) {
        Athlete a = new Athlete("John", 5);
        Athlete b = new Athlete("James", 6);
        //print their names, bibNumbers, and the location of their race. 
        System.out.println(a.name + "-----" + a.bibNumber + "-----" + a.raceLocation);
        System.out.println(b.name + "-----" + b.bibNumber + "-----" + b.raceLocation);
    }
}
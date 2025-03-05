class Continent {
    String continentName;
    Continent(String continent) {
        this.continentName = continent;
    }
}
class Country extends Continent {
    String countryName;
    Country(String country, String continent) {
        super(continent);
        this.countryName = country;
    }
}
class State extends Country {
    String stateName;
    State(String state, String country, String continent) {
        super(country, continent);
        this.stateName = state;
    }
    void displayDetails(String place) {
        System.out.println("Place     : " + place);
        System.out.println("State     : " + stateName);
        System.out.println("Country   : " + countryName);
        System.out.println("Continent : " + continentName);
    }
}
public class Multilevel {
    public static void main(String[] args) {
        State myState = new State("Gujarat", "India", "Asia");
        myState.displayDetails("Ahmedabad");
    }
}

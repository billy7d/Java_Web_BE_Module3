package Model;

public class Country {
    private String countryName;
    private int countryId;

    public Country(){}

    public Country(int countryId,String countryName) {
        this.countryName = countryName;
        this.countryId = countryId;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }
}
